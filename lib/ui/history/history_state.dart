import 'package:flutter_example/model/keyword.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
class HistoryState with _$HistoryState {
  factory HistoryState({
    @Default(false) bool isLoading,
    Exception? exception,
    List<Keyword>? keywordList,
    @Default(false) bool shouldReload,
  }) = _HistoryState;
}
