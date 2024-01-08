import 'package:flutter/material.dart';

class SimpleCalculatorTheme{
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.red,
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.pink,
  );
}