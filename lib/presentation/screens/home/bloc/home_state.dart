part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    UserModel? user,
    @Default(false) bool isLoading,
    AppAction? action,
  }) = _HomeState;
}
