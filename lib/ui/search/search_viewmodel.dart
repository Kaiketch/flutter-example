import 'package:flutter_example/ui/search/search_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchStateProvider =
    StateNotifierProvider.autoDispose<SearchViewModel, SearchState>(
  (ref) => SearchViewModel(),
);

class SearchViewModel extends StateNotifier<SearchState> {
  SearchViewModel() : super(SearchState());

  void onKeywordUpdated(String keyword) {
    state = state.copyWith(keyword: keyword);
  }
}
