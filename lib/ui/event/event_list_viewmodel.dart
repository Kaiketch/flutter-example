import 'package:flutter_example/data/repository/event_repository.dart';
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
    state = state.copyWith(isLoading: true, keyword: keyword);

    _eventRepository
        .getEvents(keyword)
        .catchError((e) {
          state = state.copyWith(exception: e);
        })
        .then(
          (value) => {
            state = state.copyWith(eventResult: value),
          },
        )
        .whenComplete(() {
          state = state.copyWith(isLoading: false);
        });
  }
}
