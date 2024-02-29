part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(false) bool isLoading,
  }) = _AuthState;
}
