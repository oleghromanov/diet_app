// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  AppAction? get action => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isLoading,
      String searchText,
      AppAction? action,
      UserModel? user});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? searchText = null,
    Object? action = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isLoading,
      String searchText,
      AppAction? action,
      UserModel? user});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLoading = null,
    Object? searchText = null,
    Object? action = freezed,
    Object? user = freezed,
  }) {
    return _then(_$SearchStateImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  _$SearchStateImpl(
      {final List<Recipe> recipes = const [],
      this.isLoading = false,
      this.searchText = '',
      this.action,
      this.user})
      : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  @JsonKey()
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String searchText;
  @override
  final AppAction? action;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'SearchState(recipes: $recipes, isLoading: $isLoading, searchText: $searchText, action: $action, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      isLoading,
      searchText,
      action,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {final List<Recipe> recipes,
      final bool isLoading,
      final String searchText,
      final AppAction? action,
      final UserModel? user}) = _$SearchStateImpl;

  @override
  List<Recipe> get recipes;
  @override
  bool get isLoading;
  @override
  String get searchText;
  @override
  AppAction? get action;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function(String text) onSearchTextChanged,
    required TResult Function() onSearchClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(String text)? onSearchTextChanged,
    TResult? Function()? onSearchClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(String text)? onSearchTextChanged,
    TResult Function()? onSearchClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnSearchTextChanged value) onSearchTextChanged,
    required TResult Function(OnSearchClicked value) onSearchClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult? Function(OnSearchClicked value)? onSearchClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult Function(OnSearchClicked value)? onSearchClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'SearchEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function(String text) onSearchTextChanged,
    required TResult Function() onSearchClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(String text)? onSearchTextChanged,
    TResult? Function()? onSearchClicked,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(String text)? onSearchTextChanged,
    TResult Function()? onSearchClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnSearchTextChanged value) onSearchTextChanged,
    required TResult Function(OnSearchClicked value) onSearchClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult? Function(OnSearchClicked value)? onSearchClicked,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult Function(OnSearchClicked value)? onSearchClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SearchEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$InitUserImplCopyWith<$Res> {
  factory _$$InitUserImplCopyWith(
          _$InitUserImpl value, $Res Function(_$InitUserImpl) then) =
      __$$InitUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$InitUserImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitUserImpl>
    implements _$$InitUserImplCopyWith<$Res> {
  __$$InitUserImplCopyWithImpl(
      _$InitUserImpl _value, $Res Function(_$InitUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$InitUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$InitUserImpl implements InitUser {
  const _$InitUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'SearchEvent.initUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitUserImplCopyWith<_$InitUserImpl> get copyWith =>
      __$$InitUserImplCopyWithImpl<_$InitUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function(String text) onSearchTextChanged,
    required TResult Function() onSearchClicked,
  }) {
    return initUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(String text)? onSearchTextChanged,
    TResult? Function()? onSearchClicked,
  }) {
    return initUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(String text)? onSearchTextChanged,
    TResult Function()? onSearchClicked,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnSearchTextChanged value) onSearchTextChanged,
    required TResult Function(OnSearchClicked value) onSearchClicked,
  }) {
    return initUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult? Function(OnSearchClicked value)? onSearchClicked,
  }) {
    return initUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult Function(OnSearchClicked value)? onSearchClicked,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(this);
    }
    return orElse();
  }
}

abstract class InitUser implements SearchEvent {
  const factory InitUser(final UserModel user) = _$InitUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$InitUserImplCopyWith<_$InitUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSearchTextChangedImplCopyWith<$Res> {
  factory _$$OnSearchTextChangedImplCopyWith(_$OnSearchTextChangedImpl value,
          $Res Function(_$OnSearchTextChangedImpl) then) =
      __$$OnSearchTextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnSearchTextChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnSearchTextChangedImpl>
    implements _$$OnSearchTextChangedImplCopyWith<$Res> {
  __$$OnSearchTextChangedImplCopyWithImpl(_$OnSearchTextChangedImpl _value,
      $Res Function(_$OnSearchTextChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnSearchTextChangedImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchTextChangedImpl implements OnSearchTextChanged {
  const _$OnSearchTextChangedImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'SearchEvent.onSearchTextChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchTextChangedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSearchTextChangedImplCopyWith<_$OnSearchTextChangedImpl> get copyWith =>
      __$$OnSearchTextChangedImplCopyWithImpl<_$OnSearchTextChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function(String text) onSearchTextChanged,
    required TResult Function() onSearchClicked,
  }) {
    return onSearchTextChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(String text)? onSearchTextChanged,
    TResult? Function()? onSearchClicked,
  }) {
    return onSearchTextChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(String text)? onSearchTextChanged,
    TResult Function()? onSearchClicked,
    required TResult orElse(),
  }) {
    if (onSearchTextChanged != null) {
      return onSearchTextChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnSearchTextChanged value) onSearchTextChanged,
    required TResult Function(OnSearchClicked value) onSearchClicked,
  }) {
    return onSearchTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult? Function(OnSearchClicked value)? onSearchClicked,
  }) {
    return onSearchTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult Function(OnSearchClicked value)? onSearchClicked,
    required TResult orElse(),
  }) {
    if (onSearchTextChanged != null) {
      return onSearchTextChanged(this);
    }
    return orElse();
  }
}

abstract class OnSearchTextChanged implements SearchEvent {
  const factory OnSearchTextChanged(final String text) =
      _$OnSearchTextChangedImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$OnSearchTextChangedImplCopyWith<_$OnSearchTextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSearchClickedImplCopyWith<$Res> {
  factory _$$OnSearchClickedImplCopyWith(_$OnSearchClickedImpl value,
          $Res Function(_$OnSearchClickedImpl) then) =
      __$$OnSearchClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSearchClickedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnSearchClickedImpl>
    implements _$$OnSearchClickedImplCopyWith<$Res> {
  __$$OnSearchClickedImplCopyWithImpl(
      _$OnSearchClickedImpl _value, $Res Function(_$OnSearchClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnSearchClickedImpl implements OnSearchClicked {
  const _$OnSearchClickedImpl();

  @override
  String toString() {
    return 'SearchEvent.onSearchClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSearchClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function(String text) onSearchTextChanged,
    required TResult Function() onSearchClicked,
  }) {
    return onSearchClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(String text)? onSearchTextChanged,
    TResult? Function()? onSearchClicked,
  }) {
    return onSearchClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(String text)? onSearchTextChanged,
    TResult Function()? onSearchClicked,
    required TResult orElse(),
  }) {
    if (onSearchClicked != null) {
      return onSearchClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnSearchTextChanged value) onSearchTextChanged,
    required TResult Function(OnSearchClicked value) onSearchClicked,
  }) {
    return onSearchClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult? Function(OnSearchClicked value)? onSearchClicked,
  }) {
    return onSearchClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnSearchTextChanged value)? onSearchTextChanged,
    TResult Function(OnSearchClicked value)? onSearchClicked,
    required TResult orElse(),
  }) {
    if (onSearchClicked != null) {
      return onSearchClicked(this);
    }
    return orElse();
  }
}

abstract class OnSearchClicked implements SearchEvent {
  const factory OnSearchClicked() = _$OnSearchClickedImpl;
}
