import 'package:flutter/material.dart';
import 'package:calculadora_flutter/material_app_theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora simples',
      themeMode: ThemeMode.dark,
      theme: SimpleCalculatorTheme.light,
      darkTheme: SimpleCalculatorTheme.dark,
      home: const SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      color: theme.colorScheme.background,
      alignment: Alignment.center,
      child: Text(
        'Calculadora simples',
        style: theme.textTheme.bodyMedium,
      ),
    );
  }
}
