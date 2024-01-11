import 'package:flutter/material.dart';

class SimpleCalculatorTheme {
  static final ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink, brightness: Brightness.light),
  );

  static final ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pink, brightness: Brightness.dark),
  );
}
