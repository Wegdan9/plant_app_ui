

import 'package:flutter/material.dart';


/// A class to define all Application Theme COLORS - FONTS - WIDGETS
class AppTheme{

  static const String bgImage = 'assets/images/bg.png';
  static const String profileImage = 'assets/images/profile.jpg';

  ///Defining Colors
  static const primarySwatch = Color(0xFF214712);
  static const kIconColor = Color(0xFFD9D9D9);

  ///  Defining ThemeData SCAFFOLD - APPBAR - ELEVATEDBUTTON - FLOATINGACTIONBUTTON
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primarySwatch,
          fixedSize: Size.fromHeight(50),

        )
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: primarySwatch,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      )
    ),
  );
}