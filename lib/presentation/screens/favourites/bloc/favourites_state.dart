part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  factory FavouritesState({
    UserModel? user,
    @Default(false) bool isLoading,
    @Default([]) List<Recipe> favourites,
    AppAction? action,
  }) = _FavouritesState;
}
