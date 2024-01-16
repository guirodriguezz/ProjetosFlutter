import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({
    super.key,
    required this.display,
  });

  final String display;

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  int easterEgg = 0;

  void showEasteEgg(int value, BuildContext context) {
    easterEgg += value;

    if (easterEgg >= 7) {
      easterEgg = 0;
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Flutter é vida')));
    }
  }

  void onCardLongPress() {
    debugPrint('Clique longo');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Um clique');
        showEasteEgg(1, context);
      },
      onDoubleTap: () {
        debugPrint('Duplo clique');
        showEasteEgg(2, context);
      },
      onLongPress: onCardLongPress,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(widget.display),
            )),
      ),
    );
  }
}
