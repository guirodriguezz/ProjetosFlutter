import 'package:flutter/material.dart';
import 'package:ginasio_esportes_flutter/tabs/sport_tab.dart';
import '../models/sport.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({
    super.key,
    required this.tabsSportsList,
  });

  final List<Sport> tabsSportsList;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        for (final sport in tabsSportsList) SportTab(sport: sport),
      ],
    );
  }
}
