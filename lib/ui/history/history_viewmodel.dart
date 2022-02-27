import 'package:flutter_example/data/repository/keyword_repository.dart';
import 'package:flutter_example/ui/history/history_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final historyStateProvider =
    StateNotifierProvider.autoDispose<HistoryViewModel, HistoryState>(
  (ref) => HistoryViewModel(ref.read(keywordRepositoryProvider)),
);

class HistoryViewModel extends StateNotifier<HistoryState> {
  HistoryViewModel(this._keywordRepository) : super(HistoryState());

  final KeywordRepository _keywordRepository;

  Future<void> getKeywords() async {
    state = state.copyWith(isLoading: true, shouldReload: false);
    _keywordRepository
        .getKeywords()
        .catchError((e) {
          state = state.copyWith(exception: e);
        })
        .then((value) => state = state.copyWith(keywordList: value))
        .whenComplete(() {
          state = state.copyWith(isLoading: false);
        });
  }

  Future<void> setShouldReload(bool shouldReload) async {
    state = state.copyWith(shouldReload: shouldReload);
  }
}
