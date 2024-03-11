import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/Theme.dart';
import 'package:todo/tabs/settings/settings.dart';
import 'package:todo/tabs/tasks/Addtaskbuttonsheet.dart';
import 'package:todo/tabs/tasks/tasktab.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (_) => AddTaskBottomsheet());
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.bodyLarge,
        elevation: 0,
        backgroundColor: yusuf.primarycolor,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(start: 22),
          child: Text(appbartitles[selectedindex]),
        ),
      ),
      body: tabs[selectedindex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            selectedindex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'settings'),
          ],
        ),
      ),
    );
  }
}
