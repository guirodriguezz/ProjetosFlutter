import 'package:flutter/material.dart';

class SportsGymTheme {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.grey[200],
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.greenAccent,
      brightness: Brightness.light,
    ),
    textTheme: _textTheme,
  );

  static final ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.greenAccent,
      brightness: Brightness.dark,
    ),
    textTheme: _textTheme,
  );

  static const _textTheme = TextTheme(
    bodyMedium: TextStyle(fontSize: 25),
  );
}
