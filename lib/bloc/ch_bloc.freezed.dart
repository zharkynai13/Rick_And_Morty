// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvents {
  String get name => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventsFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventsFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventsFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterEventsCopyWith<CharacterEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventsCopyWith<$Res> {
  factory $CharacterEventsCopyWith(
          CharacterEvents value, $Res Function(CharacterEvents) then) =
      _$CharacterEventsCopyWithImpl<$Res, CharacterEvents>;
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class _$CharacterEventsCopyWithImpl<$Res, $Val extends CharacterEvents>
    implements $CharacterEventsCopyWith<$Res> {
  _$CharacterEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterEventsFetchCopyWith<$Res>
    implements $CharacterEventsCopyWith<$Res> {
  factory _$$CharacterEventsFetchCopyWith(_$CharacterEventsFetch value,
          $Res Function(_$CharacterEventsFetch) then) =
      __$$CharacterEventsFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int page});
}

/// @nodoc
class __$$CharacterEventsFetchCopyWithImpl<$Res>
    extends _$CharacterEventsCopyWithImpl<$Res, _$CharacterEventsFetch>
    implements _$$CharacterEventsFetchCopyWith<$Res> {
  __$$CharacterEventsFetchCopyWithImpl(_$CharacterEventsFetch _value,
      $Res Function(_$CharacterEventsFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? page = null,
  }) {
    return _then(_$CharacterEventsFetch(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharacterEventsFetch implements CharacterEventsFetch {
  const _$CharacterEventsFetch({required this.name, required this.page});

  @override
  final String name;
  @override
  final int page;

  @override
  String toString() {
    return 'CharacterEvents.fetch(name: $name, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEventsFetch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterEventsFetchCopyWith<_$CharacterEventsFetch> get copyWith =>
      __$$CharacterEventsFetchCopyWithImpl<_$CharacterEventsFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) {
    return fetch(name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int page)? fetch,
  }) {
    return fetch?.call(name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventsFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventsFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventsFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CharacterEventsFetch implements CharacterEvents {
  const factory CharacterEventsFetch(
      {required final String name,
      required final int page}) = _$CharacterEventsFetch;

  @override
  String get name;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$CharacterEventsFetchCopyWith<_$CharacterEventsFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStatesLoading value) loading,
    required TResult Function(CharacterStatesLoaded value) loaded,
    required TResult Function(CharacterStatesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStatesLoading value)? loading,
    TResult? Function(CharacterStatesLoaded value)? loaded,
    TResult? Function(CharacterStatesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStatesLoading value)? loading,
    TResult Function(CharacterStatesLoaded value)? loaded,
    TResult Function(CharacterStatesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStatesCopyWith<$Res> {
  factory $CharacterStatesCopyWith(
          CharacterStates value, $Res Function(CharacterStates) then) =
      _$CharacterStatesCopyWithImpl<$Res, CharacterStates>;
}

/// @nodoc
class _$CharacterStatesCopyWithImpl<$Res, $Val extends CharacterStates>
    implements $CharacterStatesCopyWith<$Res> {
  _$CharacterStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterStatesLoadingCopyWith<$Res> {
  factory _$$CharacterStatesLoadingCopyWith(_$CharacterStatesLoading value,
          $Res Function(_$CharacterStatesLoading) then) =
      __$$CharacterStatesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStatesLoadingCopyWithImpl<$Res>
    extends _$CharacterStatesCopyWithImpl<$Res, _$CharacterStatesLoading>
    implements _$$CharacterStatesLoadingCopyWith<$Res> {
  __$$CharacterStatesLoadingCopyWithImpl(_$CharacterStatesLoading _value,
      $Res Function(_$CharacterStatesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStatesLoading implements CharacterStatesLoading {
  const _$CharacterStatesLoading();

  @override
  String toString() {
    return 'CharacterStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterStatesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStatesLoading value) loading,
    required TResult Function(CharacterStatesLoaded value) loaded,
    required TResult Function(CharacterStatesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStatesLoading value)? loading,
    TResult? Function(CharacterStatesLoaded value)? loaded,
    TResult? Function(CharacterStatesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStatesLoading value)? loading,
    TResult Function(CharacterStatesLoaded value)? loaded,
    TResult Function(CharacterStatesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterStatesLoading implements CharacterStates {
  const factory CharacterStatesLoading() = _$CharacterStatesLoading;
}

/// @nodoc
abstract class _$$CharacterStatesLoadedCopyWith<$Res> {
  factory _$$CharacterStatesLoadedCopyWith(_$CharacterStatesLoaded value,
          $Res Function(_$CharacterStatesLoaded) then) =
      __$$CharacterStatesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Character characterLoaded});

  $CharacterCopyWith<$Res> get characterLoaded;
}

/// @nodoc
class __$$CharacterStatesLoadedCopyWithImpl<$Res>
    extends _$CharacterStatesCopyWithImpl<$Res, _$CharacterStatesLoaded>
    implements _$$CharacterStatesLoadedCopyWith<$Res> {
  __$$CharacterStatesLoadedCopyWithImpl(_$CharacterStatesLoaded _value,
      $Res Function(_$CharacterStatesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterLoaded = null,
  }) {
    return _then(_$CharacterStatesLoaded(
      characterLoaded: null == characterLoaded
          ? _value.characterLoaded
          : characterLoaded // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get characterLoaded {
    return $CharacterCopyWith<$Res>(_value.characterLoaded, (value) {
      return _then(_value.copyWith(characterLoaded: value));
    });
  }
}

/// @nodoc

class _$CharacterStatesLoaded implements CharacterStatesLoaded {
  const _$CharacterStatesLoaded({required this.characterLoaded});

  @override
  final Character characterLoaded;

  @override
  String toString() {
    return 'CharacterStates.loaded(characterLoaded: $characterLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStatesLoaded &&
            (identical(other.characterLoaded, characterLoaded) ||
                other.characterLoaded == characterLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStatesLoadedCopyWith<_$CharacterStatesLoaded> get copyWith =>
      __$$CharacterStatesLoadedCopyWithImpl<_$CharacterStatesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(characterLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(characterLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characterLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStatesLoading value) loading,
    required TResult Function(CharacterStatesLoaded value) loaded,
    required TResult Function(CharacterStatesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStatesLoading value)? loading,
    TResult? Function(CharacterStatesLoaded value)? loaded,
    TResult? Function(CharacterStatesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStatesLoading value)? loading,
    TResult Function(CharacterStatesLoaded value)? loaded,
    TResult Function(CharacterStatesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterStatesLoaded implements CharacterStates {
  const factory CharacterStatesLoaded(
      {required final Character characterLoaded}) = _$CharacterStatesLoaded;

  Character get characterLoaded;
  @JsonKey(ignore: true)
  _$$CharacterStatesLoadedCopyWith<_$CharacterStatesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterStatesErrorCopyWith<$Res> {
  factory _$$CharacterStatesErrorCopyWith(_$CharacterStatesError value,
          $Res Function(_$CharacterStatesError) then) =
      __$$CharacterStatesErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStatesErrorCopyWithImpl<$Res>
    extends _$CharacterStatesCopyWithImpl<$Res, _$CharacterStatesError>
    implements _$$CharacterStatesErrorCopyWith<$Res> {
  __$$CharacterStatesErrorCopyWithImpl(_$CharacterStatesError _value,
      $Res Function(_$CharacterStatesError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStatesError implements CharacterStatesError {
  const _$CharacterStatesError();

  @override
  String toString() {
    return 'CharacterStates.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterStatesError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character characterLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character characterLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character characterLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStatesLoading value) loading,
    required TResult Function(CharacterStatesLoaded value) loaded,
    required TResult Function(CharacterStatesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStatesLoading value)? loading,
    TResult? Function(CharacterStatesLoaded value)? loaded,
    TResult? Function(CharacterStatesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStatesLoading value)? loading,
    TResult Function(CharacterStatesLoaded value)? loaded,
    TResult Function(CharacterStatesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharacterStatesError implements CharacterStates {
  const factory CharacterStatesError() = _$CharacterStatesError;
}
