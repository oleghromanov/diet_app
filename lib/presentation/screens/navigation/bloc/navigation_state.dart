part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  factory NavigationState({
    @Default(false) bool isLoading,
  }) = _NavigationState;
}
