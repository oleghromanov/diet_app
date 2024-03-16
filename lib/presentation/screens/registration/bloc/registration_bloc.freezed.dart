// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationState {
  bool get isLoading => throw _privateConstructorUsedError;
  AppAction? get action => throw _privateConstructorUsedError;
  RegistrationStage get stage => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get emailValidationError => throw _privateConstructorUsedError;
  bool get continueButtonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {bool isLoading,
      AppAction? action,
      RegistrationStage stage,
      String email,
      String password,
      String name,
      bool emailValidationError,
      bool continueButtonEnabled});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? action = freezed,
    Object? stage = null,
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? emailValidationError = null,
    Object? continueButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as RegistrationStage,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailValidationError: null == emailValidationError
          ? _value.emailValidationError
          : emailValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      continueButtonEnabled: null == continueButtonEnabled
          ? _value.continueButtonEnabled
          : continueButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AppAction? action,
      RegistrationStage stage,
      String email,
      String password,
      String name,
      bool emailValidationError,
      bool continueButtonEnabled});
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? action = freezed,
    Object? stage = null,
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? emailValidationError = null,
    Object? continueButtonEnabled = null,
  }) {
    return _then(_$RegistrationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AppAction?,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as RegistrationStage,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailValidationError: null == emailValidationError
          ? _value.emailValidationError
          : emailValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      continueButtonEnabled: null == continueButtonEnabled
          ? _value.continueButtonEnabled
          : continueButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  _$RegistrationStateImpl(
      {this.isLoading = false,
      this.action,
      this.stage = RegistrationStage.enterMail,
      this.email = "",
      this.password = "",
      this.name = "",
      this.emailValidationError = false,
      this.continueButtonEnabled = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AppAction? action;
  @override
  @JsonKey()
  final RegistrationStage stage;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final bool emailValidationError;
  @override
  @JsonKey()
  final bool continueButtonEnabled;

  @override
  String toString() {
    return 'RegistrationState(isLoading: $isLoading, action: $action, stage: $stage, email: $email, password: $password, name: $name, emailValidationError: $emailValidationError, continueButtonEnabled: $continueButtonEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailValidationError, emailValidationError) ||
                other.emailValidationError == emailValidationError) &&
            (identical(other.continueButtonEnabled, continueButtonEnabled) ||
                other.continueButtonEnabled == continueButtonEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, action, stage, email,
      password, name, emailValidationError, continueButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  factory _RegistrationState(
      {final bool isLoading,
      final AppAction? action,
      final RegistrationStage stage,
      final String email,
      final String password,
      final String name,
      final bool emailValidationError,
      final bool continueButtonEnabled}) = _$RegistrationStateImpl;

  @override
  bool get isLoading;
  @override
  AppAction? get action;
  @override
  RegistrationStage get stage;
  @override
  String get email;
  @override
  String get password;
  @override
  String get name;
  @override
  bool get emailValidationError;
  @override
  bool get continueButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onContinueClicked,
    required TResult Function() backClicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String password) passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onContinueClicked,
    TResult? Function()? backClicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String password)? passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onContinueClicked,
    TResult Function()? backClicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String password)? passwordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnContinueClicked value) onContinueClicked,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(OnContinueClicked value)? onContinueClicked,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnContinueClicked value)? onContinueClicked,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

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
    extends _$RegistrationEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'RegistrationEvent.init()';
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
    required TResult Function() onContinueClicked,
    required TResult Function() backClicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String password) passwordChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onContinueClicked,
    TResult? Function()? backClicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String password)? passwordChanged,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onContinueClicked,
    TResult Function()? backClicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String password)? passwordChanged,
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
    required TResult Function(OnContinueClicked value) onContinueClicked,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(OnContinueClicked value)? onContinueClicked,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnContinueClicked value)? onContinueClicked,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements RegistrationEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$OnContinueClickedImplCopyWith<$Res> {
  factory _$$OnContinueClickedImplCopyWith(_$OnContinueClickedImpl value,
          $Res Function(_$OnContinueClickedImpl) then) =
      __$$OnContinueClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnContinueClickedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$OnContinueClickedImpl>
    implements _$$OnContinueClickedImplCopyWith<$Res> {
  __$$OnContinueClickedImplCopyWithImpl(_$OnContinueClickedImpl _value,
      $Res Function(_$OnContinueClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnContinueClickedImpl implements OnContinueClicked {
  const _$OnContinueClickedImpl();

  @override
  String toString() {
    return 'RegistrationEvent.onContinueClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnContinueClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onContinueClicked,
    required TResult Function() backClicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String password) passwordChanged,
  }) {
    return onContinueClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onContinueClicked,
    TResult? Function()? backClicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String password)? passwordChanged,
  }) {
    return onContinueClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onContinueClicked,
    TResult Function()? backClicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String password)? passwordChanged,
    required TResult orElse(),
  }) {
    if (onContinueClicked != null) {
      return onContinueClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnContinueClicked value) onContinueClicked,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return onContinueClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(OnContinueClicked value)? onContinueClicked,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
  }) {
    return onContinueClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnContinueClicked value)? onContinueClicked,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (onContinueClicked != null) {
      return onContinueClicked(this);
    }
    return orElse();
  }
}

abstract class OnContinueClicked implements RegistrationEvent {
  const factory OnContinueClicked() = _$OnContinueClickedImpl;
}

/// @nodoc
abstract class _$$BackClickedImplCopyWith<$Res> {
  factory _$$BackClickedImplCopyWith(
          _$BackClickedImpl value, $Res Function(_$BackClickedImpl) then) =
      __$$BackClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackClickedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$BackClickedImpl>
    implements _$$BackClickedImplCopyWith<$Res> {
  __$$BackClickedImplCopyWithImpl(
      _$BackClickedImpl _value, $Res Function(_$BackClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackClickedImpl implements BackClicked {
  const _$BackClickedImpl();

  @override
  String toString() {
    return 'RegistrationEvent.backClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onContinueClicked,
    required TResult Function() backClicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String password) passwordChanged,
  }) {
    return backClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onContinueClicked,
    TResult? Function()? backClicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String password)? passwordChanged,
  }) {
    return backClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onContinueClicked,
    TResult Function()? backClicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String password)? passwordChanged,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnContinueClicked value) onContinueClicked,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return backClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(OnContinueClicked value)? onContinueClicked,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
  }) {
    return backClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnContinueClicked value)? onContinueClicked,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked(this);
    }
    return orElse();
  }
}

abstract class BackClicked implements RegistrationEvent {
  const factory BackClicked() = _$BackClickedImpl;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onContinueClicked,
    required TResult Function() backClicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String password) passwordChanged,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onContinueClicked,
    TResult? Function()? backClicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String password)? passwordChanged,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onContinueClicked,
    TResult Function()? backClicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String password)? passwordChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnContinueClicked value) onContinueClicked,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(OnContinueClicked value)? onContinueClicked,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnContinueClicked value)? onContinueClicked,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegistrationEvent {
  const factory EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RegistrationEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onContinueClicked,
    required TResult Function() backClicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String password) passwordChanged,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onContinueClicked,
    TResult? Function()? backClicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String password)? passwordChanged,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onContinueClicked,
    TResult Function()? backClicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String password)? passwordChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnContinueClicked value) onContinueClicked,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(OnContinueClicked value)? onContinueClicked,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnContinueClicked value)? onContinueClicked,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RegistrationEvent {
  const factory NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onContinueClicked,
    required TResult Function() backClicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String password) passwordChanged,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onContinueClicked,
    TResult? Function()? backClicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String password)? passwordChanged,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onContinueClicked,
    TResult Function()? backClicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String password)? passwordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnContinueClicked value) onContinueClicked,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(OnContinueClicked value)? onContinueClicked,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnContinueClicked value)? onContinueClicked,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegistrationEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
