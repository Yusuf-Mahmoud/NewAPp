import 'package:flutter/material.dart';
import 'package:todo/tabs/settings/settings.dart';
import 'package:todo/tabs/tasks/tasktab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    tasktab(),
    settingstab(),
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> appbartitles = [
      AppLocalizations.of(context)!.todoList,
      AppLocalizations.of(context)!.settings
    ];

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: Text(appbartitles[selectedindex]),
        ),
      ),
      body: tabs[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
