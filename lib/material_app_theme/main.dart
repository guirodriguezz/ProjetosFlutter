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
      themeMode: ThemeMode.light,
      theme: SimpleCalculatorTheme.light,
      darkTheme: SimpleCalculatorTheme.dark,
      home: const SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String display = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        elevation: 5,
        shadowColor: Colors.black,
        title: const Text(
          appName,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Card(
                elevation: 5,
                margin: const EdgeInsets.all(20),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(display),
                    )),
              )),
          const Expanded(child: Text('Primeira Linha')),
          const Expanded(child: Text('Segunda Linha')),
          const Expanded(child: Text('Terceira Linha')),
          const Expanded(child: Text('Quarta Linha'))
        ],
      ),
    );
  }
}
