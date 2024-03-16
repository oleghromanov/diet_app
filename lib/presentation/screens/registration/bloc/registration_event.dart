part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.init() = Init;
  const factory RegistrationEvent.onContinueClicked() = OnContinueClicked;
  const factory RegistrationEvent.backClicked() = BackClicked;
  const factory RegistrationEvent.emailChanged(String email) = EmailChanged;
  const factory RegistrationEvent.nameChanged(String name) = NameChanged;
  const factory RegistrationEvent.passwordChanged(String password) = PasswordChanged;
}