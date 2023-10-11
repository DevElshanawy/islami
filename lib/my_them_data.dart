import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemData{
  static const Color primary=Color(0xFFB7935F);
  static const Color blackColor=Color(0xFF242424);
  static ThemeData lightThem=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: blackColor),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color:blackColor,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color:blackColor,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color:Color(0xFFFFFFFFF),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primary,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkThem=ThemeData();
}