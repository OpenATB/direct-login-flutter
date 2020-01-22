import 'package:hack/ui/page/login/login_page.dart';
import 'package:hack/utils/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
    title: Constants.appName,
    theme:
        ThemeData(primaryColor: Constants.appColor, primarySwatch: Colors.amber),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: LoginPage(),
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
