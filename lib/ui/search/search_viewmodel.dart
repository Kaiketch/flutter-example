import 'package:flutter_example/data/repository/keyword_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchStateProvider =
    StateNotifierProvider.autoDispose<SearchViewModel, String>(
  (ref) => SearchViewModel(
    ref.read(keywordRepositoryProvider),
  ),
);

class SearchViewModel extends StateNotifier<String> {
  SearchViewModel(this._keywordRepository) : super("");

  final KeywordRepository _keywordRepository;

  void onKeywordUpdated(String keyword) {
    state = keyword;
  }

  Future<void> onSearchButtonTapped() async {
    _keywordRepository.storeKeyword(state);
  }
}
