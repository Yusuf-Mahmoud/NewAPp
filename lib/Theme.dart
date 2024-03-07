import 'package:flutter/material.dart';

class AppTheme {
  static Color PrimaryLight = Color(0xFF6C63FF);
  static Color PrimaryDark = Color(0xFF6C63FF);
  static Color black = Color(0xFF6C63FF);
  static Color white = Color(0xFF6C63FF);
  static Color gold = Color(0xFF6C63FF);

static ThemeData lightTheme = ThemeData(
  primaryColor: PrimaryLight,
  scaffoldBackgroundColor: Colors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: PrimaryLight,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true, 
    titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
    
  ),
);
static ThemeData darkTheme = ThemeData();



}
