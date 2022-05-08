// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventStateTearOff {
  const _$EventStateTearOff();

  _EventState call(
      {bool isLoading = false, EventResult? eventResult, AppError? appError}) {
    return _EventState(
      isLoading: isLoading,
      eventResult: eventResult,
      appError: appError,
    );
  }
}

/// @nodoc
const $EventState = _$EventStateTearOff();

/// @nodoc
mixin _$EventState {
  bool get isLoading => throw _privateConstructorUsedError;
  EventResult? get eventResult => throw _privateConstructorUsedError;
  AppError? get appError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventStateCopyWith<EventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, EventResult? eventResult, AppError? appError});

  $EventResultCopyWith<$Res>? get eventResult;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res> implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  final EventState _value;
  // ignore: unused_field
  final $Res Function(EventState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? eventResult = freezed,
    Object? appError = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      eventResult: eventResult == freezed
          ? _value.eventResult
          : eventResult // ignore: cast_nullable_to_non_nullable
              as EventResult?,
      appError: appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError?,
    ));
  }

  @override
  $EventResultCopyWith<$Res>? get eventResult {
    if (_value.eventResult == null) {
      return null;
    }

    return $EventResultCopyWith<$Res>(_value.eventResult!, (value) {
      return _then(_value.copyWith(eventResult: value));
    });
  }
}

/// @nodoc
abstract class _$EventStateCopyWith<$Res> implements $EventStateCopyWith<$Res> {
  factory _$EventStateCopyWith(
          _EventState value, $Res Function(_EventState) then) =
      __$EventStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, EventResult? eventResult, AppError? appError});

  @override
  $EventResultCopyWith<$Res>? get eventResult;
}

/// @nodoc
class __$EventStateCopyWithImpl<$Res> extends _$EventStateCopyWithImpl<$Res>
    implements _$EventStateCopyWith<$Res> {
  __$EventStateCopyWithImpl(
      _EventState _value, $Res Function(_EventState) _then)
      : super(_value, (v) => _then(v as _EventState));

  @override
  _EventState get _value => super._value as _EventState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? eventResult = freezed,
    Object? appError = freezed,
  }) {
    return _then(_EventState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      eventResult: eventResult == freezed
          ? _value.eventResult
          : eventResult // ignore: cast_nullable_to_non_nullable
              as EventResult?,
      appError: appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError?,
    ));
  }
}

/// @nodoc

class _$_EventState implements _EventState {
  _$_EventState({this.isLoading = false, this.eventResult, this.appError});

  @JsonKey()
  @override
  final bool isLoading;
  @override
  final EventResult? eventResult;
  @override
  final AppError? appError;

  @override
  String toString() {
    return 'EventState(isLoading: $isLoading, eventResult: $eventResult, appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.eventResult, eventResult) &&
            const DeepCollectionEquality().equals(other.appError, appError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(eventResult),
      const DeepCollectionEquality().hash(appError));

  @JsonKey(ignore: true)
  @override
  _$EventStateCopyWith<_EventState> get copyWith =>
      __$EventStateCopyWithImpl<_EventState>(this, _$identity);
}

abstract class _EventState implements EventState {
  factory _EventState(
      {bool isLoading,
      EventResult? eventResult,
      AppError? appError}) = _$_EventState;

  @override
  bool get isLoading;
  @override
  EventResult? get eventResult;
  @override
  AppError? get appError;
  @override
  @JsonKey(ignore: true)
  _$EventStateCopyWith<_EventState> get copyWith =>
      throw _privateConstructorUsedError;
}
