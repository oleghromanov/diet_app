part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.init() = Init;
  const factory NavigationEvent.userChanged(UserModel user) = UserChanged;
  const factory NavigationEvent.onLikeClicked(Recipe recipe) = OnLikeClicked;
}