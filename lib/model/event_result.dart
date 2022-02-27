import 'package:flutter_example/model/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_result.freezed.dart';

part 'event_result.g.dart';

@freezed
abstract class EventResult with _$EventResult {
  factory EventResult({
    required int results_start,
    required int results_returned,
    required int results_available,
    required List<Event> events,
  }) = _EventResult;

  factory EventResult.fromJson(Map<String, dynamic> json) =>
      _$EventResultFromJson(json);
}
