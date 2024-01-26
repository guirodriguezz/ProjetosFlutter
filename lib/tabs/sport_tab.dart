import 'package:flutter/material.dart';
import '../models/sport.dart';

class SportTab extends StatelessWidget {
  const SportTab({
    super.key,
    required this.sport,
  });

  final Sport sport;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        sport.name,
      ),
    );
  }
}
