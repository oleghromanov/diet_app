part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(false) bool isLoading,
    AppAction? action,
    @Default(false) bool isSignIn,
    @Default(true) bool buttonEnabled,
    @Default("") String email,
    @Default("") String password,
  }) = _AuthState;
}
