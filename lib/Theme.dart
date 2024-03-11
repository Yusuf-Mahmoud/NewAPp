import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class yusuf {
  static Color primarycolor = Color(0xff5D9CEC);
  static Color backgroundcolorlight = Color(0xffDFECDB);
  static Color backgroundcolordark = Color(0xff060E1F);
  static Color greencolor = Color(0xff61E757);
  static Color redcolor = Color(0xffEC4B4B);
  static Color greycolor = Color(0xffC8C9CB);

  static ThemeData lighttheme = ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primarycolor,
          iconSize: 30,
          elevation: 0,
          shape: const CircleBorder(
              side: BorderSide(color: Colors.white, width: 2))),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(
              fontWeight: FontWeight.w700, fontSize: 22, color: Colors.white),
          bodyMedium: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: const Color(0xff5D9CEC)),
          bodySmall: GoogleFonts.poppins(
              fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black)),
      scaffoldBackgroundColor: backgroundcolorlight,
      appBarTheme: AppBarTheme(
        backgroundColor: primarycolor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primarycolor,
        unselectedItemColor: greycolor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ));
  static ThemeData darktheme = ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: primarycolor),
      scaffoldBackgroundColor: backgroundcolordark,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primarycolor,
        unselectedItemColor: greycolor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ));
}
