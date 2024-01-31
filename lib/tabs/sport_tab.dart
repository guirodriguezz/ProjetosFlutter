import 'package:flutter/material.dart';
import '../models/sport.dart';
import '../resources/strings.dart';

class SportTab extends StatelessWidget {
  const SportTab({
    super.key,
    required this.sport,
  });

  final Sport sport;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Image.network(
            sport.cover,
            fit: BoxFit.cover,
            loadingBuilder: (_, child, loadingProgress) {
              return loadingProgress != null
                  ? const Center(child: CircularProgressIndicator())
                  : child;
            },
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          flex: 2,
          child: cardSection(theme, Strings.news),
        ),
        const SizedBox(height: 15),
        Expanded(
          flex: 2,
          child: cardSection(theme, Strings.videos),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Padding cardSection(ThemeData theme, String header) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          header,
          style: theme.textTheme.bodyMedium,
        ),
        Expanded(
          child: Row(
            children: List.generate(4, (index) {
              return Expanded(
                child: Card(
                  child: Center(
                    child: Text('$index'),
                  ),
                ),
              );
            }),
          ),
        ),
      ]),
    );
  }
}
