import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemData {
  static const Color primary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color blackColor = Color(0xFF242424);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme:const ColorScheme(
        brightness: Brightness.light,
        primary: primary,
        onPrimary: Colors.black,
        secondary: primary,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: primary,
        onBackground: Colors.grey,
        surface: Colors.blueGrey,
        onSurface: Colors.white),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: blackColor,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color: Color(0xFFFFFFFFF),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primary,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkThem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme:const ColorScheme(
        brightness: Brightness.dark,
        primary: darkPrimary,
        onPrimary: Colors.white,
        secondary: yellowColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: yellowColor,
        onBackground: Colors.grey,
        surface: Colors.blueGrey,
        onSurface: Colors.black),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color:yellowColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: darkPrimary,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
  );
}
