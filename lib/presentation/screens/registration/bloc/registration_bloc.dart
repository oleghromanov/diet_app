import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/data/repositories/nutrition_repository.dart';
import 'package:diet_app/data/repositories/recipes_repository.dart';
import 'package:diet_app/data/sources/local/secure_local_storage.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/domain/dto/calories_range.dart';
import 'package:diet_app/domain/dto/day_plan.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/enums/allergy_type.dart';
import 'package:diet_app/domain/enums/diet_type.dart';
import 'package:diet_app/domain/enums/registration_stage.dart';
import 'package:diet_app/domain/models/day_plan_model.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translator/translator.dart';

part 'registration_state.dart';

part 'registration_event.dart';

part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc({this.user}) : super(RegistrationState()) {
    on<Init>(_init);
    on<OnContinueClicked>(_onContinueClicked);
    on<BackClicked>(_backClicked);
    on<EmailChanged>(_emailChanged);
    on<NameChanged>(_nameChanged);
    on<PasswordChanged>(_passwordChanged);
    on<OnDietClicked>(_onDietClicked);
    on<OnAllergyClicked>(_onAllergyClicked);
    on<OnMaxCaloriesChanged>(_onMaxCaloriesChanged);
    on<OnMinCaloriesChanged>(_onMinCaloriesChanged);
    on<OnDaysChanged>(_onDaysChanged);
    add(const RegistrationEvent.init());
  }

  final AuthRepository authRepository = Injector.instance();
  final NutritionRepository nutritionRepository = Injector.instance();
  final RecipesRepository recipesRepository = Injector.instance();
  final SecureLocalStorage secureLocalStorage = Injector.instance();

  final translator = GoogleTranslator();

  final UserModel? user;

  bool get _continueButtonEnabled {
    switch (state.stage) {
      case RegistrationStage.enterMail:
        return state.password.isNotEmpty && state.name.isNotEmpty && state.email.isNotEmpty;
      case RegistrationStage.selectAllergies:
        return state.allergies.isNotEmpty;
      case RegistrationStage.selectDiet:
        return state.diets.isNotEmpty;
      case RegistrationStage.selectCalories:
        return state.calories.min != null && state.calories.max != null && state.calories.max! > state.calories.min!;
      case RegistrationStage.selectDays:
        return state.countDays != null;
    }
  }

  FutureOr<void> _init(Init event, Emitter<RegistrationState> emit) async {
    if (user != null) {
      emit(state.copyWith(
        stage: RegistrationStage.selectAllergies,
        email: user!.email,
        name: user!.name,
        allergies: user!.allergies,
        diets: user!.diets,
      ));
    }
  }

  FutureOr<void> _onContinueClicked(OnContinueClicked event, Emitter<RegistrationState> emit) async {
    if (state.stage == RegistrationStage.enterMail) {
      bool emailValid =
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(state.email);
      if (!emailValid) {
        emit(state.copyWith(emailValidationError: true));
        return;
      }
      emit(state.copyWith(isLoading: true));
      bool success = false;
      AppError? error;
      final result = await authRepository.registerUser(email: state.email, password: state.password);
      result.fold(
        (data) => success = data,
        (e) => error = e,
      );
      emit(state.copyWith(isLoading: false));
      if (success) {
        emit(state.copyWith(stage: RegistrationStage.values[state.stage.index + 1]));
      } else {
        emit(state.copyWith(action: ShowSnackBar(error!.errorMessage ?? 'Error')));
      }
    } else if (state.stage == RegistrationStage.selectDays) {
      emit(state.copyWith(isLoading: true));
      await _createPlan(emit);
      emit(state.copyWith(isLoading: false));
    } else {
      emit(state.copyWith(stage: RegistrationStage.values[state.stage.index + 1]));
    }
    emit(state.copyWith(continueButtonEnabled: _continueButtonEnabled));
  }

  FutureOr<void> _backClicked(BackClicked event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(stage: RegistrationStage.values[state.stage.index - 1]));
  }

  FutureOr<void> _createPlan(Emitter<RegistrationState> emit) async {
    List<DayPlan>? plans;
    AppError? error;
    final result = await nutritionRepository.createPlan(
        allergies: state.allergies, diets: state.diets, calories: state.calories, size: state.countDays ?? 7);
    result.fold(
      (data) => plans = data,
      (e) => error = e,
    );
    if (plans != null) {
      await _fetchRecipes(plans!, emit);
    }
  }

  FutureOr<void> _fetchRecipes(List<DayPlan> plans, Emitter<RegistrationState> emit) async {
    List<String> uri = [];
    List<Recipe> recipes = [];

    for (DayPlan plan in plans) {
      uri.addAll(plan.toList());
    }

    if (uri.length > 20) {
      recipes.addAll(await _getRecipes(uri.sublist(0, 19)));
      recipes.addAll(await _getRecipes(uri.sublist(19)));
    } else {
      recipes.addAll(await _getRecipes(uri));
    }

    if (recipes.isNotEmpty) {
      for (int i = 0; i < recipes.length; i++) {
        Recipe recipe = recipes[i];
        recipes[i] = await _translateRecipe(recipe);
      }

      List<DayPlanModel> plans = [];
      int countPlans = (recipes.length / 3).floor();
      if (countPlans > 0) {
        for (int i = 0; i < countPlans; i++) {
          plans.add(DayPlanModel(
            breakfast: recipes[i * 3],
            lunch: recipes[i * 3 + 1],
            dinner: recipes[i * 3 + 2],
          ));
        }
        await _signUpUser(plans, emit);
        emit(state.copyWith(mealPlan: plans));
        emit(state.copyWith(action: NavigationAction(routeName: NavigationRouter.name)));
      }
    }
  }

  Future<List<Recipe>> _getRecipes(List<String> uri) async {
    List<Recipe> recipes = [];
    AppError? error;
    final result = await recipesRepository.getRecipesByUri(uri: uri);
    result.fold(
      (data) => recipes = data,
      (e) => error = e,
    );
    return recipes;
  }

  Future<Recipe> _translateRecipe(Recipe recipe) async {
    recipe.label = await _translateText(recipe.label);
    recipe.ingredientLines = (await _translateText(recipe.ingredientLines.join('.;'))).split('.;');

    return recipe;
  }

  Future<String> _translateText(String word) async {
    try {
      return (await translator.translate(word, from: "en", to: 'ru')).text;
    } catch (e) {
      return word;
    }
  }

  FutureOr<void> _signUpUser(List<DayPlanModel> plans, Emitter<RegistrationState> emit) async {
    bool success = false;
    AppError? error;
    UserModel user = UserModel(
      email: state.email,
      name: state.name,
      mealPlan: plans,
      allergies: state.allergies,
      diets: state.diets,
      countDays: state.countDays ?? 7,
    );
    final result = await authRepository.signUp(user: user);

    result.fold(
      (data) => success = data,
      (e) => error = e,
    );

    if (success) {
      await secureLocalStorage.setEmail(state.email);
    } else {
      emit(state.copyWith(action: ShowSnackBar(error!.errorMessage ?? 'Error')));
    }
    ;
  }

  FutureOr<void> _emailChanged(EmailChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      emailValidationError: false,
      continueButtonEnabled: state.password.isNotEmpty && state.name.isNotEmpty && event.email.isNotEmpty,
    ));
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _nameChanged(NameChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      name: event.name,
      continueButtonEnabled: state.password.isNotEmpty && event.name.isNotEmpty && state.email.isNotEmpty,
    ));
  }

  FutureOr<void> _passwordChanged(PasswordChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      password: event.password,
      continueButtonEnabled: event.password.isNotEmpty && state.name.isNotEmpty && state.email.isNotEmpty,
    ));
  }

  FutureOr<void> _onDietClicked(OnDietClicked event, Emitter<RegistrationState> emit) {
    List<DietType> diets = List.from(state.diets);
    if (diets.contains(event.diet)) {
      diets.remove(event.diet);
    } else {
      diets.add(event.diet);
    }
    emit(state.copyWith(diets: diets, continueButtonEnabled: diets.isNotEmpty));
  }

  FutureOr<void> _onAllergyClicked(OnAllergyClicked event, Emitter<RegistrationState> emit) {
    List<AllergyType> allergies = List.from(state.allergies);
    if (allergies.contains(event.allergy)) {
      allergies.remove(event.allergy);
    } else {
      allergies.add(event.allergy);
    }
    emit(state.copyWith(allergies: allergies, continueButtonEnabled: allergies.isNotEmpty));
    emit(state.copyWith(continueButtonEnabled: _continueButtonEnabled));
  }

  FutureOr<void> _onMaxCaloriesChanged(OnMaxCaloriesChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(calories: CaloriesRange(min: state.calories.min, max: event.max)));
    emit(state.copyWith(continueButtonEnabled: _continueButtonEnabled));
  }

  FutureOr<void> _onMinCaloriesChanged(OnMinCaloriesChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(calories: CaloriesRange(min: event.min, max: state.calories.max)));
    emit(state.copyWith(continueButtonEnabled: _continueButtonEnabled));
  }

  FutureOr<void> _onDaysChanged(OnDaysChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(countDays: event.countDays));
    emit(state.copyWith(continueButtonEnabled: _continueButtonEnabled));
  }
}
