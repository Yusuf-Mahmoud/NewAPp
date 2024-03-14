import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo/Theme.dart';
import 'package:todo/homescreen.dart';
import 'package:todo/tabs/settings/setting_provider.dart';
import 'package:todo/tabs/tasks/task_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseFirestore.instance.disableNetwork();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => SettingProvider()),
      ChangeNotifierProvider(
        create: (_) => TaskProvider(),
      )
    ], child: TodoApp()),
  );
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: yusuf.lighttheme,
      darkTheme: yusuf.darktheme,
      themeMode: settingProvider.themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingProvider.language),
      routes: {HomeScreen.routeName: (_) => HomeScreen()},
      home: HomeScreen(),
    );
  }
}
