import 'package:flutter_example/data/repository/keyword_repository.dart';
import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/ui/history/history_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final historyStateProvider =
    StateNotifierProvider.autoDispose<HistoryViewModel, HistoryState>(
  (ref) => HistoryViewModel(ref.read(keywordRepositoryProvider)),
);

class HistoryViewModel extends StateNotifier<HistoryState> {
  HistoryViewModel(this._keywordRepository) : super(HistoryState());

  final KeywordRepository _keywordRepository;

  void onBet() {
    state = state.copyWith(shouldLoad: true);
  }

  Future<void> onUpdateHistory() async {
    state = state.copyWith(isLoading: true);
    _keywordRepository
        .getKeywords()
        .then(
          (value) => state = state.copyWith(keywordList: value, shouldLoad: false),
        )
        .catchError(
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
