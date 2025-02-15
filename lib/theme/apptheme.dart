import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Color(0xff5669FF);
  static Color white = Color(0xffF2FEFF);
  static Color red = Color(0xffFF5659);
  static Color black = Color(0xff1C1C1C);

  static ThemeData lighttheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: black,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: black,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
