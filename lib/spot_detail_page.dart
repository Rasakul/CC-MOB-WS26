import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

import 'favorites_cubit.dart';
import 'spot.dart';

class SpotDetailPage extends StatelessWidget {
  const SpotDetailPage({super.key, required this.spot});

  final Spot spot;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(spot.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Image placeholder. Real images follow later.
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.place,
              size: 64,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(spot.name, style: theme.textTheme.headlineSmall),
                    Text(
                      spot.category,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              BlocBuilder<FavoritesCubit, Set<String>>(
                builder: (context, favoriteIds) {
                  final isFavorite = favoriteIds.contains(spot.id);
                  return IconButton(
                    onPressed: () {
                      context.read<FavoritesCubit>().toggle(spot.id);
                    },
                    color: theme.colorScheme.primary,
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(spot.description, style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}
