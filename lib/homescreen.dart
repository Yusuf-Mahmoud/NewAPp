import 'package:flutter/material.dart';
import 'package:todo/tabs/settings/settings.dart';
import 'package:todo/tabs/tasks/tasktab.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  List<Widget> tabs = [
    tasktab(),
    settingstab(),
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
