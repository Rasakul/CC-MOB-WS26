import 'package:material_ui/material_ui.dart';

import 'spot.dart';

class SpotCard extends StatelessWidget {
  const SpotCard({super.key, required this.spot});

  final Spot spot;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Image placeholder. Real images follow later.
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.place,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(width: 12),
            // Expanded gives the texts the space that is left in the Row.
            // Without it a long name overflows.
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(spot.name, style: theme.textTheme.titleMedium),
                  Text(
                    spot.category,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Icon(Icons.favorite_border, color: theme.colorScheme.primary),
          ],
        ),
      ),
    );
  }
}
