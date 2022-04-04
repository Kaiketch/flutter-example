// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  _HistoryState call(
      {bool isLoading = false,
      bool shouldLoad = true,
      List<Keyword>? keywordList,
      AppError? appError}) {
    return _HistoryState(
      isLoading: isLoading,
      shouldLoad: shouldLoad,
      keywordList: keywordList,
      appError: appError,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get shouldLoad => throw _privateConstructorUsedError;
  List<Keyword>? get keywordList => throw _privateConstructorUsedError;
  AppError? get appError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool shouldLoad,
      List<Keyword>? keywordList,
      AppError? appError});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? shouldLoad = freezed,
    Object? keywordList = freezed,
    Object? appError = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldLoad: shouldLoad == freezed
          ? _value.shouldLoad
          : shouldLoad // ignore: cast_nullable_to_non_nullable
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
abstract class _$HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$HistoryStateCopyWith(
          _HistoryState value, $Res Function(_HistoryState) then) =
      __$HistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool shouldLoad,
      List<Keyword>? keywordList,
      AppError? appError});
}

/// @nodoc
class __$HistoryStateCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$HistoryStateCopyWith<$Res> {
  __$HistoryStateCopyWithImpl(
      _HistoryState _value, $Res Function(_HistoryState) _then)
      : super(_value, (v) => _then(v as _HistoryState));

  @override
  _HistoryState get _value => super._value as _HistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? shouldLoad = freezed,
    Object? keywordList = freezed,
    Object? appError = freezed,
  }) {
    return _then(_HistoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldLoad: shouldLoad == freezed
          ? _value.shouldLoad
          : shouldLoad // ignore: cast_nullable_to_non_nullable
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

class _$_HistoryState implements _HistoryState {
  _$_HistoryState(
      {this.isLoading = false,
      this.shouldLoad = true,
      this.keywordList,
      this.appError});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool shouldLoad;
  @override
  final List<Keyword>? keywordList;
  @override
  final AppError? appError;

  @override
  String toString() {
    return 'HistoryState(isLoading: $isLoading, shouldLoad: $shouldLoad, keywordList: $keywordList, appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.shouldLoad, shouldLoad) &&
            const DeepCollectionEquality()
                .equals(other.keywordList, keywordList) &&
            const DeepCollectionEquality().equals(other.appError, appError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(shouldLoad),
      const DeepCollectionEquality().hash(keywordList),
      const DeepCollectionEquality().hash(appError));

  @JsonKey(ignore: true)
  @override
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      __$HistoryStateCopyWithImpl<_HistoryState>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  factory _HistoryState(
      {bool isLoading,
      bool shouldLoad,
      List<Keyword>? keywordList,
      AppError? appError}) = _$_HistoryState;

  @override
  bool get isLoading;
  @override
  bool get shouldLoad;
  @override
  List<Keyword>? get keywordList;
  @override
  AppError? get appError;
  @override
  @JsonKey(ignore: true)
  _$HistoryStateCopyWith<_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
