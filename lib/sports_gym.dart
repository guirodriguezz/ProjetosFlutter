import 'package:flutter/material.dart';
import 'package:ginasio_esportes_flutter/pages/calendar_page.dart';
import 'package:ginasio_esportes_flutter/pages/profile_page.dart';
import 'package:ginasio_esportes_flutter/pages/ranking_page.dart';
import 'package:ginasio_esportes_flutter/pages/sports_page.dart';
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
  final pageController = PageController();
  int currentPage = 0;

  void onItemPressed(int page) {
    pageController.jumpToPage(page);
    setState(() {
      currentPage = page;
    });
  }

  void onPageChanged(int page) {
    setState(() {
      currentPage = page;
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
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          SportsPage(),
          RankingPage(),
          CalendarPage(),
          ProfilePage(),
        ],
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
          currentIndex: currentPage,
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

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
