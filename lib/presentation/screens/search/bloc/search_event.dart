part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.init() = Init;
  const factory SearchEvent.initUser(UserModel user) = InitUser;
  const factory SearchEvent.onSearchTextChanged(String text) = OnSearchTextChanged;
  const factory SearchEvent.onSearchClicked() = OnSearchClicked;
}