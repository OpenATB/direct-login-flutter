import 'package:hack/ui/page/analytic/analytic_page.dart';
import 'package:hack/ui/page/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              title: Text(HomePage.title), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text(AnalyticPage.title), icon: Icon(Icons.show_chart)),
          BottomNavigationBarItem(
              title: Text("transfer"), icon: Icon(Icons.settings_overscan)),
          BottomNavigationBarItem(
              title: Text("Profile"), icon: Icon(Icons.person_outline))
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              defaultTitle: HomePage.title,
              builder: (context) => HomePage(),
            );
          case 1:
            return CupertinoTabView(
              defaultTitle: AnalyticPage.title,
              builder: (context) => AnalyticPage(),
            );
          case 2:
            return CupertinoTabView(
              defaultTitle: HomePage.title,
              builder: (context) => HomePage(),
            );
          case 3:
            return CupertinoTabView(
              defaultTitle: HomePage.title,
              builder: (context) => HomePage(),
            );
          default:
            assert(false, "Unexpected tab");
            return null;
        }
      },
    );
  }
}
