import 'package:flutter_example/model/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    String? keyword,
    @Default(false) bool isLoading,
    AppError? appError,
  }) = _SearchState;
}
