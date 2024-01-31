import 'package:flutter/material.dart';

class SimpleCalculatorTheme {
  static final ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink,
      brightness: Brightness.light,
    ),
    iconTheme: const IconThemeData(color: Colors.pink),
    textTheme: textTheme,
  );

  static final ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.pink,
      brightness: Brightness.dark,
    ),
    textTheme: textTheme,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
    ),
  );

  static const textTheme = TextTheme(
    bodyMedium: TextStyle(fontSize: 25),
    labelLarge: TextStyle(fontSize: 25),
  );
}
