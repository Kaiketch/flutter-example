import 'package:dio/dio.dart';
import 'package:flutter_example/data/api/app_dio.dart';
import 'package:flutter_example/model/event_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'event_api.g.dart';

final eventApiProvider = Provider<EventApi>((ref) => EventApi(ref.read));

@RestApi()
abstract class EventApi {
  factory EventApi(Reader reader) => _EventApi(reader(dioProvider));

  @GET('/api/v1/event')
  Future<EventResult> fetchEvents({@Query("keyword") required String keyword});
}
