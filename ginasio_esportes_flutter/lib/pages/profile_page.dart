import 'package:flutter/material.dart';
import '../resources/strings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        Strings.profile,
      ),
    );
  }
}
