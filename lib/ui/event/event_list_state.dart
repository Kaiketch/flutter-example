import 'package:flutter_example/model/event_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_list_state.freezed.dart';

@freezed
class EventListState with _$EventListState {
  factory EventListState({
    @Default(false) bool isLoading,
    Exception? exception,
    EventResult? eventResult,
  }) = _EventListState;
}
