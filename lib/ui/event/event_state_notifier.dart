import 'package:flutter_example/data/repository/event_repository.dart';
import 'package:flutter_example/model/app_error.dart';
import 'package:flutter_example/ui/event/event_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final eventStateProvider =
    StateNotifierProvider.autoDispose<EventStateNotifier, EventState>(
  (ref) => EventStateNotifier(
    ref.read(eventRepositoryProvider),
  ),
);

class EventStateNotifier extends StateNotifier<EventState> {
  EventStateNotifier(this._eventRepository) : super(EventState());

  final EventRepository _eventRepository;

  Future<void> fetchEvents(String keyword) async {
    state = state.copyWith(isLoading: true);

    _eventRepository
        .fetchEvents(keyword)
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
