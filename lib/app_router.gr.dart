// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_example/ui/event/event_list_page.dart' as _i2;
import 'package:flutter_example/ui/history/history_page.dart' as _i4;
import 'package:flutter_example/ui/main_page.dart' as _i1;
import 'package:flutter_example/ui/search/search_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    EventListRoute.name: (routeData) {
      final args = routeData.argsAs<EventListRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.EventListPage(args.keyword, key: args.key));
    },
    SearchRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SearchPage());
    },
    HistoryRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.HistoryPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MainRoute.name, path: '/', children: [
          _i5.RouteConfig(SearchRoute.name,
              path: 'search', parent: MainRoute.name),
          _i5.RouteConfig(HistoryRoute.name,
              path: 'history', parent: MainRoute.name)
        ]),
        _i5.RouteConfig(EventListRoute.name, path: '/event_list')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EventListPage]
class EventListRoute extends _i5.PageRouteInfo<EventListRouteArgs> {
  EventListRoute({required String keyword, _i6.Key? key})
      : super(EventListRoute.name,
            path: '/event_list',
            args: EventListRouteArgs(keyword: keyword, key: key));

  static const String name = 'EventListRoute';
}

class EventListRouteArgs {
  const EventListRouteArgs({required this.keyword, this.key});

  final String keyword;

  final _i6.Key? key;

  @override
  String toString() {
    return 'EventListRouteArgs{keyword: $keyword, key: $key}';
  }
}

/// generated route for
/// [_i3.SearchPage]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i4.HistoryPage]
class HistoryRoute extends _i5.PageRouteInfo<void> {
  const HistoryRoute() : super(HistoryRoute.name, path: 'history');

  static const String name = 'HistoryRoute';
}
