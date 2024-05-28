// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  UserModel? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  AppAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({UserModel? user, bool isLoading, AppAction? action});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
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
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? user, bool isLoading, AppAction? action});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? action = freezed,
  }) {
    return _then(_$HomeStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl({this.user, this.isLoading = false, this.action});

  @override
  final UserModel? user;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AppAction? action;

  @override
  String toString() {
    return 'HomeState(user: $user, isLoading: $isLoading, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final UserModel? user,
      final bool isLoading,
      final AppAction? action}) = _$HomeStateImpl;

  @override
  UserModel? get user;
  @override
  bool get isLoading;
  @override
  AppAction? get action;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function(HomeAction action) onActionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(HomeAction action)? onActionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(HomeAction action)? onActionPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnActionPressed value) onActionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnActionPressed value)? onActionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnActionPressed value)? onActionPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
    extends _$HomeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'HomeEvent.init()';
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
    required TResult Function(HomeAction action) onActionPressed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(HomeAction action)? onActionPressed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(HomeAction action)? onActionPressed,
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
    required TResult Function(OnActionPressed value) onActionPressed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnActionPressed value)? onActionPressed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnActionPressed value)? onActionPressed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements HomeEvent {
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
    extends _$HomeEventCopyWithImpl<$Res, _$InitUserImpl>
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
    return 'HomeEvent.initUser(user: $user)';
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
    required TResult Function(HomeAction action) onActionPressed,
  }) {
    return initUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(HomeAction action)? onActionPressed,
  }) {
    return initUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(HomeAction action)? onActionPressed,
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
    required TResult Function(OnActionPressed value) onActionPressed,
  }) {
    return initUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnActionPressed value)? onActionPressed,
  }) {
    return initUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnActionPressed value)? onActionPressed,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(this);
    }
    return orElse();
  }
}

abstract class InitUser implements HomeEvent {
  const factory InitUser(final UserModel user) = _$InitUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$InitUserImplCopyWith<_$InitUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnActionPressedImplCopyWith<$Res> {
  factory _$$OnActionPressedImplCopyWith(_$OnActionPressedImpl value,
          $Res Function(_$OnActionPressedImpl) then) =
      __$$OnActionPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeAction action});
}

/// @nodoc
class __$$OnActionPressedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnActionPressedImpl>
    implements _$$OnActionPressedImplCopyWith<$Res> {
  __$$OnActionPressedImplCopyWithImpl(
      _$OnActionPressedImpl _value, $Res Function(_$OnActionPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
  }) {
    return _then(_$OnActionPressedImpl(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as HomeAction,
    ));
  }
}

/// @nodoc

class _$OnActionPressedImpl implements OnActionPressed {
  const _$OnActionPressedImpl(this.action);

  @override
  final HomeAction action;

  @override
  String toString() {
    return 'HomeEvent.onActionPressed(action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnActionPressedImpl &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnActionPressedImplCopyWith<_$OnActionPressedImpl> get copyWith =>
      __$$OnActionPressedImplCopyWithImpl<_$OnActionPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) initUser,
    required TResult Function(HomeAction action) onActionPressed,
  }) {
    return onActionPressed(action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? initUser,
    TResult? Function(HomeAction action)? onActionPressed,
  }) {
    return onActionPressed?.call(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? initUser,
    TResult Function(HomeAction action)? onActionPressed,
    required TResult orElse(),
  }) {
    if (onActionPressed != null) {
      return onActionPressed(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InitUser value) initUser,
    required TResult Function(OnActionPressed value) onActionPressed,
  }) {
    return onActionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InitUser value)? initUser,
    TResult? Function(OnActionPressed value)? onActionPressed,
  }) {
    return onActionPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InitUser value)? initUser,
    TResult Function(OnActionPressed value)? onActionPressed,
    required TResult orElse(),
  }) {
    if (onActionPressed != null) {
      return onActionPressed(this);
    }
    return orElse();
  }
}

abstract class OnActionPressed implements HomeEvent {
  const factory OnActionPressed(final HomeAction action) =
      _$OnActionPressedImpl;

  HomeAction get action;
  @JsonKey(ignore: true)
  _$$OnActionPressedImplCopyWith<_$OnActionPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
