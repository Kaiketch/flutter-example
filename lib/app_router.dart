import 'package:auto_route/annotations.dart';
import 'package:flutter_example/ui/event/event_list_page.dart';
import 'package:flutter_example/ui/history/history_page.dart';
import 'package:flutter_example/ui/main_page.dart';
import 'package:flutter_example/ui/search/search_page.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainPage,
      initial: true,
      children: <AutoRoute>[
        AutoRoute(page: SearchPage, path: 'search'),
        AutoRoute(page: HistoryPage, path: 'history'),
      ],
    ),
    AutoRoute(page: EventListPage, path: '/event_list'),
  ],
)
class $AppRouter {}
