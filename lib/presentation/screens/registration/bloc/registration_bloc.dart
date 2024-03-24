import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diet_app/core/errors/app_errors.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/data/repositories/nutrition_repository.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/domain/dto/calories_range.dart';
import 'package:diet_app/domain/dto/day_plan.dart';
import 'package:diet_app/domain/enums/allergy_type.dart';
import 'package:diet_app/domain/enums/diet_type.dart';
import 'package:diet_app/domain/enums/registration_stage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.dart';

part 'registration_event.dart';

part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationState()) {
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
  }

  AuthRepository authRepository = Injector.instance();
  NutritionRepository nutritionRepository = Injector.instance();

  bool get _continueButtonEnabled{
    switch (state.stage) {
      case RegistrationStage.enterMail:
        return state.password.isNotEmpty && state.name.isNotEmpty && state.email.isNotEmpty;
      case RegistrationStage.selectAllergies:
        return state.allergies.isNotEmpty;
      case RegistrationStage.selectDiet:
        return state.diets.isNotEmpty;
      case RegistrationStage.selectCalories:
        return state.calories.min != null && state.calories.max != null;
    }
  }

  FutureOr<void> _init(Init event, Emitter<RegistrationState> emit) async {

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
    } else if (state.stage == RegistrationStage.selectCalories) {
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
      allergies: state.allergies,
      diets: state.diets,
      calories: state.calories,
    );
    result.fold(
      (data) => plans = data,
      (e) => error = e,
    );
    if (plans != null) {
      emit(state.copyWith(action: ShowSnackBar('Suc')));
    }
  }

  FutureOr<void> _fetchRecipe(Emitter<RegistrationState> emit) async {
    List<DayPlan>? plans;
    AppError? error;
    final result = await nutritionRepository.createPlan(
      allergies: state.allergies,
      diets: state.diets,
      calories: state.calories,
    );
    result.fold(
      (data) => plans = data,
      (e) => error = e,
    );
    if (plans != null) {

    }
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
  }

  FutureOr<void> _onMaxCaloriesChanged(OnMaxCaloriesChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      calories: CaloriesRange(min: state.calories.min, max: event.max),
      continueButtonEnabled: true
    ));
  }

  FutureOr<void> _onMinCaloriesChanged(OnMinCaloriesChanged event, Emitter<RegistrationState> emit) {
    emit(state.copyWith(
      calories: CaloriesRange(min: event.min, max: state.calories.max),
      continueButtonEnabled: true
    ));
  }
}
