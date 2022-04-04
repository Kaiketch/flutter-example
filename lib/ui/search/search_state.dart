import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    String? keyword,
  }) = _SearchState;
}
