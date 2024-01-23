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
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: const Icon(Icons.share),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        notchMargin: 7,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconSize: 22,
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
          ],
        ),
      ),
    );
  }
}
