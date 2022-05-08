import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/app_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        SearchRoute(),
        const HistoryRoute(),
      ],
      appBarBuilder: (_, tabsRouter) => AppBar(
        title: Text(tabsRouter.current.name),
        centerTitle: true,
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
