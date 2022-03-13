// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventResult _$EventResultFromJson(Map<String, dynamic> json) {
  return _EventResult.fromJson(json);
}

/// @nodoc
class _$EventResultTearOff {
  const _$EventResultTearOff();

  _EventResult call(
      {required int results_start,
      required int results_returned,
      required int results_available,
      required List<Event> events}) {
    return _EventResult(
      results_start: results_start,
      results_returned: results_returned,
      results_available: results_available,
      events: events,
    );
  }

  EventResult fromJson(Map<String, Object?> json) {
    return EventResult.fromJson(json);
  }
}

/// @nodoc
const $EventResult = _$EventResultTearOff();

/// @nodoc
mixin _$EventResult {
  int get results_start => throw _privateConstructorUsedError;
  int get results_returned => throw _privateConstructorUsedError;
  int get results_available => throw _privateConstructorUsedError;
  List<Event> get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventResultCopyWith<EventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventResultCopyWith<$Res> {
  factory $EventResultCopyWith(
          EventResult value, $Res Function(EventResult) then) =
      _$EventResultCopyWithImpl<$Res>;
  $Res call(
      {int results_start,
      int results_returned,
      int results_available,
      List<Event> events});
}

/// @nodoc
class _$EventResultCopyWithImpl<$Res> implements $EventResultCopyWith<$Res> {
  _$EventResultCopyWithImpl(this._value, this._then);

  final EventResult _value;
  // ignore: unused_field
  final $Res Function(EventResult) _then;

  @override
  $Res call({
    Object? results_start = freezed,
    Object? results_returned = freezed,
    Object? results_available = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      results_start: results_start == freezed
          ? _value.results_start
          : results_start // ignore: cast_nullable_to_non_nullable
              as int,
      results_returned: results_returned == freezed
          ? _value.results_returned
          : results_returned // ignore: cast_nullable_to_non_nullable
              as int,
      results_available: results_available == freezed
          ? _value.results_available
          : results_available // ignore: cast_nullable_to_non_nullable
              as int,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
abstract class _$EventResultCopyWith<$Res>
    implements $EventResultCopyWith<$Res> {
  factory _$EventResultCopyWith(
          _EventResult value, $Res Function(_EventResult) then) =
      __$EventResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int results_start,
      int results_returned,
      int results_available,
      List<Event> events});
}

/// @nodoc
class __$EventResultCopyWithImpl<$Res> extends _$EventResultCopyWithImpl<$Res>
    implements _$EventResultCopyWith<$Res> {
  __$EventResultCopyWithImpl(
      _EventResult _value, $Res Function(_EventResult) _then)
      : super(_value, (v) => _then(v as _EventResult));

  @override
  _EventResult get _value => super._value as _EventResult;

  @override
  $Res call({
    Object? results_start = freezed,
    Object? results_returned = freezed,
    Object? results_available = freezed,
    Object? events = freezed,
  }) {
    return _then(_EventResult(
      results_start: results_start == freezed
          ? _value.results_start
          : results_start // ignore: cast_nullable_to_non_nullable
              as int,
      results_returned: results_returned == freezed
          ? _value.results_returned
          : results_returned // ignore: cast_nullable_to_non_nullable
              as int,
      results_available: results_available == freezed
          ? _value.results_available
          : results_available // ignore: cast_nullable_to_non_nullable
              as int,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventResult implements _EventResult {
  _$_EventResult(
      {required this.results_start,
      required this.results_returned,
      required this.results_available,
      required this.events});

  factory _$_EventResult.fromJson(Map<String, dynamic> json) =>
      _$$_EventResultFromJson(json);

  @override
  final int results_start;
  @override
  final int results_returned;
  @override
  final int results_available;
  @override
  final List<Event> events;

  @override
  String toString() {
    return 'EventResult(results_start: $results_start, results_returned: $results_returned, results_available: $results_available, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventResult &&
            const DeepCollectionEquality()
                .equals(other.results_start, results_start) &&
            const DeepCollectionEquality()
                .equals(other.results_returned, results_returned) &&
            const DeepCollectionEquality()
                .equals(other.results_available, results_available) &&
            const DeepCollectionEquality().equals(other.events, events));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results_start),
      const DeepCollectionEquality().hash(results_returned),
      const DeepCollectionEquality().hash(results_available),
      const DeepCollectionEquality().hash(events));

  @JsonKey(ignore: true)
  @override
  _$EventResultCopyWith<_EventResult> get copyWith =>
      __$EventResultCopyWithImpl<_EventResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventResultToJson(this);
  }
}

abstract class _EventResult implements EventResult {
  factory _EventResult(
      {required int results_start,
      required int results_returned,
      required int results_available,
      required List<Event> events}) = _$_EventResult;

  factory _EventResult.fromJson(Map<String, dynamic> json) =
      _$_EventResult.fromJson;

  @override
  int get results_start;
  @override
  int get results_returned;
  @override
  int get results_available;
  @override
  List<Event> get events;
  @override
  @JsonKey(ignore: true)
  _$EventResultCopyWith<_EventResult> get copyWith =>
      throw _privateConstructorUsedError;
}
