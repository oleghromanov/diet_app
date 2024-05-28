import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diet_app/core/models/app_action.dart';
import 'package:diet_app/data/repositories/recipes_repository.dart';
import 'package:diet_app/di/injector.dart';
import 'package:diet_app/domain/dto/recipe.dart';
import 'package:diet_app/domain/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translator/translator.dart';

part 'search_state.dart';

part 'search_event.dart';

part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<Init>(_init);
    on<InitUser>(_initUser);
    on<OnSearchTextChanged>(_onSearchTextChanged);
    on<OnSearchClicked>(_onSearchClicked);
  }

  final RecipesRepository _recipesRepository = Injector.instance();
  final translator = GoogleTranslator();

  FutureOr<void> _init(Init event, Emitter<SearchState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _initUser(InitUser event, Emitter<SearchState> emit) async {
    emit(state.copyWith(user: event.user));
  }

  FutureOr<void> _onSearchTextChanged(OnSearchTextChanged event, Emitter<SearchState> emit) {
    emit(state.copyWith(searchText: event.text));
  }

  FutureOr<void> _onSearchClicked(OnSearchClicked event, Emitter<SearchState> emit) async {
    String text = await _translateText(state.searchText, isEnToRu: false);
    List<Recipe> recipes = await _getRecipes(text);
    if (recipes.isNotEmpty) {
      recipes = recipes.sublist(1, 10);
      for (int i = 0; i < recipes.length; i++) {
        Recipe recipe = recipes[i];
        recipes[i] = await _translateRecipe(recipe);
      }
      emit(state.copyWith(recipes: recipes));
    }
  }

  Future<List<Recipe>> _getRecipes(String text) async {
    List<Recipe> recipes = [];
    // AppError? error;
    final result = await _recipesRepository.searchRecipes(searchText: text);
    result.fold(
      (data) => recipes = data,
      (e) => {},
    );
    return recipes;
  }

  Future<Recipe> _translateRecipe(Recipe recipe) async {
    recipe.label = await _translateText(recipe.label);
    recipe.ingredientLines = (await _translateText(recipe.ingredientLines.join('.;'))).split('.;');

    return recipe;
  }

  Future<String> _translateText(String word, {bool isEnToRu = true}) async {
    try {
      return (await translator.translate(word, from: isEnToRu ? "en" : "ru", to: isEnToRu ? 'ru' : 'en')).text;
    } catch (e) {
      return word;
    }
  }
}
