part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = Init;
  const factory AuthEvent.signInClicked() = SignInClicked;
  const factory AuthEvent.emailChanged(String email) = EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = PasswordChanged;
}