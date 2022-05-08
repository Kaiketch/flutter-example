import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/model/keyword.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_state.freezed.dart';

@freezed
class KeywordState with _$KeywordState {
  factory KeywordState({
    @Default(false) bool isLoading,
    List<Keyword>? keywordList,
    AppError? appError,
  }) = _KeywordState;
}
