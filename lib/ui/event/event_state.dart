import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/model/event_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_state.freezed.dart';

@freezed
class EventState with _$EventState {
  factory EventState({
    @Default(false) bool isLoading,
    EventResult? eventResult,
    AppError? appError,
  }) = _EventState;
}
