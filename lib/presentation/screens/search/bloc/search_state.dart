part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    @Default([]) List<Recipe> recipes,
    @Default(false) bool isLoading,
    @Default('') String searchText,
    AppAction? action,
    UserModel? user,
  }) = _SearchState;
}
