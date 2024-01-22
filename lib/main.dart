import 'package:flutter/material.dart';
import 'package:ginasio_esportes_flutter/resources/strings.dart';
import 'package:ginasio_esportes_flutter/resources/theme.dart';
import 'package:ginasio_esportes_flutter/sports_gym.dart';

void main() => runApp(const SportsGymApp());

class SportsGymApp extends StatefulWidget {
  const SportsGymApp({super.key});

  @override
  State<SportsGymApp> createState() => _SportsGymAppState();
}

class _SportsGymAppState extends State<SportsGymApp> {
  ThemeMode currentThemeMode = ThemeMode.dark;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      themeMode: currentThemeMode,
      theme: SportsGymTheme.light,
      darkTheme: SportsGymTheme.dark,
      home: SportsGym(onThemeModePressed: toggleThemeMode),
    );
  }
}
