import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/model/keyword.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  factory HistoryState({
    @Default(false) bool isLoading,
    @Default(true) bool shouldLoad,
    List<Keyword>? keywordList,
    AppError? appError,
  }) = _HistoryState;
}
