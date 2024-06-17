part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.init() = Init;
  const factory FavouritesEvent.initUser(UserModel user) = InitUser;
  const factory FavouritesEvent.onLikePressed() = OnLikePressed;
}