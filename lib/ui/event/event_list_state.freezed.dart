// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventListStateTearOff {
  const _$EventListStateTearOff();

  _EventListState call(
      {bool isLoading = false, EventResult? eventResult, AppError? appError}) {
    return _EventListState(
      isLoading: isLoading,
      eventResult: eventResult,
      appError: appError,
    );
  }
}

/// @nodoc
const $EventListState = _$EventListStateTearOff();

/// @nodoc
mixin _$EventListState {
  bool get isLoading => throw _privateConstructorUsedError;
  EventResult? get eventResult => throw _privateConstructorUsedError;
  AppError? get appError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventListStateCopyWith<EventListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListStateCopyWith<$Res> {
  factory $EventListStateCopyWith(
          EventListState value, $Res Function(EventListState) then) =
      _$EventListStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, EventResult? eventResult, AppError? appError});

  $EventResultCopyWith<$Res>? get eventResult;
}

/// @nodoc
class _$EventListStateCopyWithImpl<$Res>
    implements $EventListStateCopyWith<$Res> {
  _$EventListStateCopyWithImpl(this._value, this._then);

  final EventListState _value;
  // ignore: unused_field
  final $Res Function(EventListState) _then;

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
abstract class _$EventListStateCopyWith<$Res>
    implements $EventListStateCopyWith<$Res> {
  factory _$EventListStateCopyWith(
          _EventListState value, $Res Function(_EventListState) then) =
      __$EventListStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, EventResult? eventResult, AppError? appError});

  @override
  $EventResultCopyWith<$Res>? get eventResult;
}

/// @nodoc
class __$EventListStateCopyWithImpl<$Res>
    extends _$EventListStateCopyWithImpl<$Res>
    implements _$EventListStateCopyWith<$Res> {
  __$EventListStateCopyWithImpl(
      _EventListState _value, $Res Function(_EventListState) _then)
      : super(_value, (v) => _then(v as _EventListState));

  @override
  _EventListState get _value => super._value as _EventListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? eventResult = freezed,
    Object? appError = freezed,
  }) {
    return _then(_EventListState(
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

class _$_EventListState implements _EventListState {
  _$_EventListState({this.isLoading = false, this.eventResult, this.appError});

  @JsonKey()
  @override
  final bool isLoading;
  @override
  final EventResult? eventResult;
  @override
  final AppError? appError;

  @override
  String toString() {
    return 'EventListState(isLoading: $isLoading, eventResult: $eventResult, appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventListState &&
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
  _$EventListStateCopyWith<_EventListState> get copyWith =>
      __$EventListStateCopyWithImpl<_EventListState>(this, _$identity);
}

abstract class _EventListState implements EventListState {
  factory _EventListState(
      {bool isLoading,
      EventResult? eventResult,
      AppError? appError}) = _$_EventListState;

  @override
  bool get isLoading;
  @override
  EventResult? get eventResult;
  @override
  AppError? get appError;
  @override
  @JsonKey(ignore: true)
  _$EventListStateCopyWith<_EventListState> get copyWith =>
      throw _privateConstructorUsedError;
}
