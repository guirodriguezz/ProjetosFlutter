import 'package:calculadora_flutter/material_app_theme/theme.dart';
import 'package:flutter/material.dart';

const String appName = 'Calculadora simples';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
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

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        title: const Text(appName),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          appName,
          style: theme.textTheme.bodyMedium,
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        color: Colors.blue,
      ),
    );
  }
}
