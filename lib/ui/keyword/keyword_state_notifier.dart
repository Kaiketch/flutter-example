import 'package:flutter_example/data/repository/keyword_repository.dart';
import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/ui/keyword/keyword_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final keywordStateProvider =
    StateNotifierProvider.autoDispose<KeywordStateNotifier, KeywordState>(
  (ref) => KeywordStateNotifier(ref.read(keywordRepositoryProvider)),
);

class KeywordStateNotifier extends StateNotifier<KeywordState> {
  KeywordStateNotifier(this._keywordRepository) : super(KeywordState());

  final KeywordRepository _keywordRepository;

  Future<void> saveKeyword(String keyword) async {
    state = state.copyWith(isLoading: true);
    _keywordRepository.storeKeyword(keyword).catchError(
      (e) {
        state = state.copyWith(appError: AppError.from(e));
      },
    ).whenComplete(
      () {
        fetchKeywords();
      },
    );
  }

  Future<void> fetchKeywords() async {
    state = state.copyWith(isLoading: true);
    _keywordRepository
        .fetchKeywords()
        .then(
          (value) =>
              state = state.copyWith(keywordList: value),
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
