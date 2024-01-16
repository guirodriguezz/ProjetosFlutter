import 'package:flutter/material.dart';

typedef OperadorPressedCallback = void Function(String);

class OperadorButton extends StatelessWidget {
  const OperadorButton(
      {super.key, required this.operador, required this.onOperadorPressed});

  final String operador;
  final OperadorPressedCallback onOperadorPressed;

  IconData mapOperadorToIcon() {
    switch (operador) {
      case 'x':
        return Icons.close;
      case '-':
        return Icons.remove;
      default:
        return Icons.add;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: () => onOperadorPressed(operador),
        icon: Icon(mapOperadorToIcon()),
      ),
    );
  }
}
