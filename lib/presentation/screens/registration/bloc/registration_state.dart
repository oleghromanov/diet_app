part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  factory RegistrationState({
    @Default(false) bool isLoading,
    AppAction? action,
    @Default(RegistrationStage.enterMail) RegistrationStage stage,
    @Default("") String email,
    @Default("") String password,
    @Default("") String name,
    @Default(false) bool emailValidationError,
    @Default(false) bool continueButtonEnabled,
  }) = _RegistrationState;
}
