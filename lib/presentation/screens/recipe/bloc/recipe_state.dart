part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  factory RecipeState({
    required Recipe recipe,
    @Default(false) bool isLoading,
    @Default(false) bool inFavorite,
  }) = _RecipeState;
}
