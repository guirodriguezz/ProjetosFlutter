import 'package:flutter/material.dart';
import 'package:ginasio_esportes_flutter/resources/strings.dart';

class SportsPage extends StatefulWidget {
  const SportsPage({super.key});

  @override
  State<SportsPage> createState() => _SportsPageState();
}

class _SportsPageState extends State<SportsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        Strings.sports,
      ),
    );
  }
}
