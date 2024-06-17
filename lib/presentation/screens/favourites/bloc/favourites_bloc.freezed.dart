// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesState {
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Recipe> get favourites => throw _privateConstructorUsedError;
  AppAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesStateCopyWith<FavouritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
  @useResult
  $Res call(
      {UserModel? user,
      bool isLoading,
      List<Recipe> favourites,
      AppAction? action});
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? favourites = null,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favourites: null == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesStateImplCopyWith<$Res>
    implements $FavouritesStateCopyWith<$Res> {
  factory _$$FavouritesStateImplCopyWith(_$FavouritesStateImpl value,
          $Res Function(_$FavouritesStateImpl) then) =
      __$$FavouritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? user,
      bool isLoading,
      List<Recipe> favourites,
      AppAction? action});
}

/// @nodoc
class __$$FavouritesStateImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavouritesStateImpl>
    implements _$$FavouritesStateImplCopyWith<$Res> {
  __$$FavouritesStateImplCopyWithImpl(
      _$FavouritesStateImpl _value, $Res Function(_$FavouritesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? favourites = null,
    Object? action = freezed,
  }) {
    return _then(_$FavouritesStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favourites: null == favourites
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
    ));
  }
}

/// @nodoc

class _$FavouritesStateImpl implements _FavouritesState {
  _$FavouritesStateImpl(
      {this.user,
      this.isLoading = false,
      final List<Recipe> favourites = const [],
      this.action})
      : _favourites = favourites;

  @override
  final UserModel? user;
  @override
  @JsonKey()
  final bool isLoading;
  final List<Recipe> _favourites;
  @override
  @JsonKey()
  List<Recipe> get favourites {
    if (_favourites is EqualUnmodifiableListView) return _favourites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favourites);
  }

  @override
  final AppAction? action;

  @override
  String toString() {
    return 'FavouritesState(user: $user, isLoading: $isLoading, favourites: $favourites, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._favourites, _favourites) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading,
      const DeepCollectionEquality().hash(_favourites), action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesStateImplCopyWith<_$FavouritesStateImpl> get copyWith =>
      __$$FavouritesStateImplCopyWithImpl<_$FavouritesStateImpl>(
          this, _$identity);
}

abstract class _FavouritesState implements FavouritesState {
  factory _FavouritesState(
      {final UserModel? user,
      final bool isLoading,
      final List<Recipe> favourites,
      final AppAction? action}) = _$FavouritesStateImpl;

  @override
  UserModel? get user;
  @override
  bool get isLoading;
  @override
  List<Recipe> get favourites;
  @override
  AppAction? get action;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesStateImplCopyWith<_$FavouritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function() onLikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function()? onLikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function()? onLikePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnLikePressed value) onLikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnLikePressed value)? onLikePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnLikePressed value)? onLikePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res, FavouritesEvent>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res, $Val extends FavouritesEvent>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

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
    extends _$FavouritesEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'FavouritesEvent.init()';
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
    required TResult Function() onLikePressed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function()? onLikePressed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function()? onLikePressed,
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
    required TResult Function(OnLikePressed value) onLikePressed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnLikePressed value)? onLikePressed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnLikePressed value)? onLikePressed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements FavouritesEvent {
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
    extends _$FavouritesEventCopyWithImpl<$Res, _$InitUserImpl>
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
    return 'FavouritesEvent.initUser(user: $user)';
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
    required TResult Function() onLikePressed,
  }) {
    return initUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function()? onLikePressed,
  }) {
    return initUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function()? onLikePressed,
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
    required TResult Function(OnLikePressed value) onLikePressed,
  }) {
    return initUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnLikePressed value)? onLikePressed,
  }) {
    return initUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnLikePressed value)? onLikePressed,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(this);
    }
    return orElse();
  }
}

abstract class InitUser implements FavouritesEvent {
  const factory InitUser(final UserModel user) = _$InitUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$InitUserImplCopyWith<_$InitUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLikePressedImplCopyWith<$Res> {
  factory _$$OnLikePressedImplCopyWith(
          _$OnLikePressedImpl value, $Res Function(_$OnLikePressedImpl) then) =
      __$$OnLikePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLikePressedImplCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res, _$OnLikePressedImpl>
    implements _$$OnLikePressedImplCopyWith<$Res> {
  __$$OnLikePressedImplCopyWithImpl(
      _$OnLikePressedImpl _value, $Res Function(_$OnLikePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLikePressedImpl implements OnLikePressed {
  const _$OnLikePressedImpl();

  @override
  String toString() {
    return 'FavouritesEvent.onLikePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLikePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function() onLikePressed,
  }) {
    return onLikePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function()? onLikePressed,
  }) {
    return onLikePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function()? onLikePressed,
    required TResult orElse(),
  }) {
    if (onLikePressed != null) {
      return onLikePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnLikePressed value) onLikePressed,
  }) {
    return onLikePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnLikePressed value)? onLikePressed,
  }) {
    return onLikePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnLikePressed value)? onLikePressed,
    required TResult orElse(),
  }) {
    if (onLikePressed != null) {
      return onLikePressed(this);
    }
    return orElse();
  }
}

abstract class OnLikePressed implements FavouritesEvent {
  const factory OnLikePressed() = _$OnLikePressedImpl;
}
