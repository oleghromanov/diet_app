// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeState {
  Recipe get recipe => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get inFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
  @useResult
  $Res call({Recipe recipe, bool isLoading, bool inFavorite});
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? isLoading = null,
    Object? inFavorite = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      inFavorite: null == inFavorite
          ? _value.inFavorite
          : inFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeStateImplCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$$RecipeStateImplCopyWith(
          _$RecipeStateImpl value, $Res Function(_$RecipeStateImpl) then) =
      __$$RecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe, bool isLoading, bool inFavorite});
}

/// @nodoc
class __$$RecipeStateImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeStateImpl>
    implements _$$RecipeStateImplCopyWith<$Res> {
  __$$RecipeStateImplCopyWithImpl(
      _$RecipeStateImpl _value, $Res Function(_$RecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? isLoading = null,
    Object? inFavorite = null,
  }) {
    return _then(_$RecipeStateImpl(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      inFavorite: null == inFavorite
          ? _value.inFavorite
          : inFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeStateImpl implements _RecipeState {
  _$RecipeStateImpl(
      {required this.recipe, this.isLoading = false, this.inFavorite = false});

  @override
  final Recipe recipe;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool inFavorite;

  @override
  String toString() {
    return 'RecipeState(recipe: $recipe, isLoading: $isLoading, inFavorite: $inFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeStateImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.inFavorite, inFavorite) ||
                other.inFavorite == inFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, isLoading, inFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeStateImplCopyWith<_$RecipeStateImpl> get copyWith =>
      __$$RecipeStateImplCopyWithImpl<_$RecipeStateImpl>(this, _$identity);
}

abstract class _RecipeState implements RecipeState {
  factory _RecipeState(
      {required final Recipe recipe,
      final bool isLoading,
      final bool inFavorite}) = _$RecipeStateImpl;

  @override
  Recipe get recipe;
  @override
  bool get isLoading;
  @override
  bool get inFavorite;
  @override
  @JsonKey(ignore: true)
  _$$RecipeStateImplCopyWith<_$RecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inFavoriteChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InFavoriteChanged value) inFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InFavoriteChanged value)? inFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InFavoriteChanged value)? inFavoriteChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res, RecipeEvent>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res, $Val extends RecipeEvent>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

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
    extends _$RecipeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'RecipeEvent.init()';
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
    required TResult Function() inFavoriteChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inFavoriteChanged,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inFavoriteChanged,
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
    required TResult Function(InFavoriteChanged value) inFavoriteChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InFavoriteChanged value)? inFavoriteChanged,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InFavoriteChanged value)? inFavoriteChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements RecipeEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$InFavoriteChangedImplCopyWith<$Res> {
  factory _$$InFavoriteChangedImplCopyWith(_$InFavoriteChangedImpl value,
          $Res Function(_$InFavoriteChangedImpl) then) =
      __$$InFavoriteChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InFavoriteChangedImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$InFavoriteChangedImpl>
    implements _$$InFavoriteChangedImplCopyWith<$Res> {
  __$$InFavoriteChangedImplCopyWithImpl(_$InFavoriteChangedImpl _value,
      $Res Function(_$InFavoriteChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InFavoriteChangedImpl implements InFavoriteChanged {
  const _$InFavoriteChangedImpl();

  @override
  String toString() {
    return 'RecipeEvent.inFavoriteChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InFavoriteChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() inFavoriteChanged,
  }) {
    return inFavoriteChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? inFavoriteChanged,
  }) {
    return inFavoriteChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? inFavoriteChanged,
    required TResult orElse(),
  }) {
    if (inFavoriteChanged != null) {
      return inFavoriteChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(InFavoriteChanged value) inFavoriteChanged,
  }) {
    return inFavoriteChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(InFavoriteChanged value)? inFavoriteChanged,
  }) {
    return inFavoriteChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(InFavoriteChanged value)? inFavoriteChanged,
    required TResult orElse(),
  }) {
    if (inFavoriteChanged != null) {
      return inFavoriteChanged(this);
    }
    return orElse();
  }
}

abstract class InFavoriteChanged implements RecipeEvent {
  const factory InFavoriteChanged() = _$InFavoriteChangedImpl;
}
