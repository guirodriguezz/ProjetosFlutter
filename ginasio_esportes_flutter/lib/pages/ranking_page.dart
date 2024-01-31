import 'package:flutter/material.dart';
import '../resources/strings.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        Strings.ranking,
      ),
    );
  }
}
