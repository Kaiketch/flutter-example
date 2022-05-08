import 'package:flutter_example/data/api/event_api.dart';
import 'package:flutter_example/model/event_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final eventRepositoryProvider = Provider<EventRepository>(
    (ref) => EventRepository(ref.read(eventApiProvider)));

class EventRepository {
  EventRepository(this._eventApi);

  final EventApi _eventApi;

  Future<EventResult> fetchEvents(String keyword) {
    return _eventApi.fetchEvents(keyword: keyword);
  }
}
