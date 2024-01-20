import 'package:calculadora_flutter/material_app_theme/OperadorButton.dart';
import 'package:calculadora_flutter/material_app_theme/display.dart';
import 'package:calculadora_flutter/material_app_theme/number_button.dart';
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
  static const operadores = ['x', '-', '+'];
  String display = '0';
  String firstNumber = '';
  String secondNumber = '';
  String operador = '';

  void insert(String char) {
    if (char == '0') {
      if (operador.isEmpty && firstNumber.isEmpty) return;
      if (operador.isNotEmpty && secondNumber.isEmpty) return;
    }

    if (operadores.contains(char)) {
      if (firstNumber.isEmpty) {
        firstNumber = '0';
      }
      operador = char;
    } else {
      if (operador.isEmpty) {
        firstNumber += char;
      } else {
        secondNumber += char;
      }
    }

    setState(() {
      if (operador.isEmpty) {
        display = firstNumber;
      } else {
        if (secondNumber.isEmpty) {
          display = '$firstNumber $operador';
        } else {
          display = '$firstNumber $operador $secondNumber';
        }
      }
    });
  }

  void clear() {
    firstNumber = '';
    operador = '';
    secondNumber = '';

    setState(() {
      display = '0';
    });
  }

  void calculate() {
    final number1 = int.parse(firstNumber);
    final number2 = int.parse(secondNumber);
    int result = 0;

    switch (operador) {
      case 'x':
        result = number1 * number2;
        break;
      case '-':
        result = number1 - number2;
        break;
      default:
        result = number1 + number2;
    }

    firstNumber = result.toString();
    secondNumber = '';
    operador = '';

    setState(() {
      display = result.toString();
    });
  }

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
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: FloatingActionButton(onPressed: clear, child: const Text('C')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 3, child: Display(display: display)),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(
                  number: '7',
                  onNumberPressed: insert,
                ),
                NumberButton(
                  number: '8',
                  onNumberPressed: insert,
                ),
                NumberButton(
                  number: '9',
                  onNumberPressed: insert,
                ),
                OperadorButton(operador: 'x', onOperadorPressed: insert)
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(
                  number: '4',
                  onNumberPressed: insert,
                ),
                NumberButton(
                  number: '5',
                  onNumberPressed: insert,
                ),
                NumberButton(
                  number: '6',
                  onNumberPressed: insert,
                ),
                OperadorButton(operador: '-', onOperadorPressed: insert)
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(
                  number: '1',
                  onNumberPressed: insert,
                ),
                NumberButton(
                  number: '2',
                  onNumberPressed: insert,
                ),
                NumberButton(
                  number: '3',
                  onNumberPressed: insert,
                ),
                OperadorButton(operador: '+', onOperadorPressed: insert)
              ],
            ),
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 3,
                  child: TextButton(
                      onPressed: () => insert('0'), child: const Text('0'))),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                    onPressed: calculate, child: const Text('=')),
              ))
            ],
          )),
        ],
      ),
    );
  }
}
