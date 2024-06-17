part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.init() = Init;
  const factory RecipeEvent.inFavoriteChanged() = InFavoriteChanged;
}