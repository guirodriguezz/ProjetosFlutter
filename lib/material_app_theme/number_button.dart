import 'package:flutter/material.dart';

typedef NumberPressedCallBack = void Function(String);

class NumberButton extends StatelessWidget {
  const NumberButton({
    super.key,
    required this.number,
    required this.onNumberPressed
  });

  final String number;
  final NumberPressedCallBack onNumberPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => onNumberPressed(number),
        child: Text(number),
      ),
    );
  }
}