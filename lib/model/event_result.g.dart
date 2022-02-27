// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventResult _$$_EventResultFromJson(Map<String, dynamic> json) =>
    _$_EventResult(
      results_start: json['results_start'] as int,
      results_returned: json['results_returned'] as int,
      results_available: json['results_available'] as int,
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EventResultToJson(_$_EventResult instance) =>
    <String, dynamic>{
      'results_start': instance.results_start,
      'results_returned': instance.results_returned,
      'results_available': instance.results_available,
      'events': instance.events,
    };
