import 'package:flutter_example/data/repository/event_repository.dart';
import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/ui/event/event_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final eventListStateProvider =
    StateNotifierProvider.autoDispose<EventListViewModel, EventListState>(
  (ref) => EventListViewModel(
    ref.read(eventRepositoryProvider),
  ),
);

class EventListViewModel extends StateNotifier<EventListState> {
  EventListViewModel(this._eventRepository) : super(EventListState());

  final EventRepository _eventRepository;

  Future<void> onUpdateEventList(String keyword) async {
    state = state.copyWith(isLoading: true);

    _eventRepository
        .getEvents(keyword)
        .then(
          (value) => {
            state = state.copyWith(eventResult: value),
          },
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
