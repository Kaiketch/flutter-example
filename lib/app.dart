import 'package:flutter/material.dart';
import 'package:flutter_example/app_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
