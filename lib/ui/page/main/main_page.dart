import 'package:hack/ui/widgets/common_bottom_nav.dart';
import 'package:hack/ui/widgets/common_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer(),
      appBar: AppBar(
        centerTitle: false,
        title: Text("Hackathon"),
      ),
      body: CommonBottomNav(),
    );
  }
}
