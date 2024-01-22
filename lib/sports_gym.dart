import 'package:flutter/material.dart';
import 'package:ginasio_esportes_flutter/resources/strings.dart';

class SportsGym extends StatefulWidget {
  const SportsGym({
    super.key,
    required this.onThemeModePressed,
  });

  final VoidCallback onThemeModePressed;

  @override
  State<SportsGym> createState() => _SportsGymState();
}

class _SportsGymState extends State<SportsGym> {
  int currentIndex = 0;

  void onItemPressed(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        elevation: 5,
        shadowColor: Colors.black,
        title: const Text(Strings.appName),
        actions: [
          IconButton(
            onPressed: widget.onThemeModePressed,
            icon: Icon(
              theme.brightness == Brightness.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Current Index: $currentIndex'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: onItemPressed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports),
              label: Strings.sports,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: Strings.ranking,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: Strings.calendar,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: Strings.profile,
            ),
          ]),
    );
  }
}
