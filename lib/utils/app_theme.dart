import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,

      primary: Colors.black,
      onPrimary: Colors.white,

      secondary: Colors.black,
      onSecondary: Colors.white,

      error: Colors.red,
      onError: Colors.white,

      surface: Color.fromARGB(255, 235, 237, 238),
      onSurface: Colors.black,
    ),
  );

  static ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,

      primary: Colors.white,
      onPrimary: Colors.black,

      secondary: Colors.white,
      onSecondary: Colors.black,

      error: Colors.red,
      onError: Colors.white,

      surface: Colors.black,
      onSurface: Color.fromARGB(255, 31, 31, 31),
    ),
  );
}
