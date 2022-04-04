import 'package:flutter_example/data/repository/keyword_repository.dart';
import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/ui/search/search_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchStateProvider =
    StateNotifierProvider.autoDispose<SearchViewModel, SearchState>(
  (ref) => SearchViewModel(
    ref.read(keywordRepositoryProvider),
  ),
);

class SearchViewModel extends StateNotifier<SearchState> {
  SearchViewModel(this._keywordRepository) : super(SearchState());

  final KeywordRepository _keywordRepository;

  void onKeywordUpdated(String keyword) {
    state = state.copyWith(keyword: keyword);
  }

  Future<void> onSearchButtonTapped(String keyword) async {
    state = state.copyWith(isLoading: true);
    _keywordRepository.storeKeyword(keyword).catchError(
      (e) {
        state = state.copyWith(appError: AppError.from(e));
      },
    ).whenComplete(
      () {
        state = state.copyWith(isLoading: false);
      },
    );
  }
}
