// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keyword_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KeywordStateTearOff {
  const _$KeywordStateTearOff();

  _KeywordState call(
      {bool isLoading = false,
      List<Keyword>? keywordList,
      AppError? appError}) {
    return _KeywordState(
      isLoading: isLoading,
      keywordList: keywordList,
      appError: appError,
    );
  }
}

/// @nodoc
const $KeywordState = _$KeywordStateTearOff();

/// @nodoc
mixin _$KeywordState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Keyword>? get keywordList => throw _privateConstructorUsedError;
  AppError? get appError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeywordStateCopyWith<KeywordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordStateCopyWith<$Res> {
  factory $KeywordStateCopyWith(
          KeywordState value, $Res Function(KeywordState) then) =
      _$KeywordStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Keyword>? keywordList, AppError? appError});
}

/// @nodoc
class _$KeywordStateCopyWithImpl<$Res> implements $KeywordStateCopyWith<$Res> {
  _$KeywordStateCopyWithImpl(this._value, this._then);

  final KeywordState _value;
  // ignore: unused_field
  final $Res Function(KeywordState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? keywordList = freezed,
    Object? appError = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordList: keywordList == freezed
          ? _value.keywordList
          : keywordList // ignore: cast_nullable_to_non_nullable
              as List<Keyword>?,
      appError: appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError?,
    ));
  }
}

/// @nodoc
abstract class _$KeywordStateCopyWith<$Res>
    implements $KeywordStateCopyWith<$Res> {
  factory _$KeywordStateCopyWith(
          _KeywordState value, $Res Function(_KeywordState) then) =
      __$KeywordStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Keyword>? keywordList, AppError? appError});
}

/// @nodoc
class __$KeywordStateCopyWithImpl<$Res> extends _$KeywordStateCopyWithImpl<$Res>
    implements _$KeywordStateCopyWith<$Res> {
  __$KeywordStateCopyWithImpl(
      _KeywordState _value, $Res Function(_KeywordState) _then)
      : super(_value, (v) => _then(v as _KeywordState));

  @override
  _KeywordState get _value => super._value as _KeywordState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? keywordList = freezed,
    Object? appError = freezed,
  }) {
    return _then(_KeywordState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordList: keywordList == freezed
          ? _value.keywordList
          : keywordList // ignore: cast_nullable_to_non_nullable
              as List<Keyword>?,
      appError: appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError?,
    ));
  }
}

/// @nodoc

class _$_KeywordState implements _KeywordState {
  _$_KeywordState({this.isLoading = false, this.keywordList, this.appError});

  @JsonKey()
  @override
  final bool isLoading;
  @override
  final List<Keyword>? keywordList;
  @override
  final AppError? appError;

  @override
  String toString() {
    return 'KeywordState(isLoading: $isLoading, keywordList: $keywordList, appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeywordState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.keywordList, keywordList) &&
            const DeepCollectionEquality().equals(other.appError, appError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(keywordList),
      const DeepCollectionEquality().hash(appError));

  @JsonKey(ignore: true)
  @override
  _$KeywordStateCopyWith<_KeywordState> get copyWith =>
      __$KeywordStateCopyWithImpl<_KeywordState>(this, _$identity);
}

abstract class _KeywordState implements KeywordState {
  factory _KeywordState(
      {bool isLoading,
      List<Keyword>? keywordList,
      AppError? appError}) = _$_KeywordState;

  @override
  bool get isLoading;
  @override
  List<Keyword>? get keywordList;
  @override
  AppError? get appError;
  @override
  @JsonKey(ignore: true)
  _$KeywordStateCopyWith<_KeywordState> get copyWith =>
      throw _privateConstructorUsedError;
}
