part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = Init;
  const factory HomeEvent.initUser(UserModel user) = InitUser;
  const factory HomeEvent.onActionPressed(HomeAction action) = OnActionPressed;
}