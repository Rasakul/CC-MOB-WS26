import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

import 'favorites_cubit.dart';
import 'mock_spots.dart';
import 'spot_card.dart';
import 'spot_detail_page.dart';

class SpotListPage extends StatelessWidget {
  const SpotListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spots'),
        actions: [
          // Only rebuilds when the number of favourites changes.
          BlocSelector<FavoritesCubit, Set<String>, int>(
            selector: (favoriteIds) => favoriteIds.length,
            builder: (context, count) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Center(child: Text('Favourites: $count')),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<FavoritesCubit, Set<String>>(
        builder: (context, favoriteIds) {
          return ListView.builder(
            itemCount: mockSpots.length,
            itemBuilder: (context, index) {
              final spot = mockSpots[index];
              return SpotCard(
                spot: spot,
                isFavorite: favoriteIds.contains(spot.id),
                onToggle: () {
                  context.read<FavoritesCubit>().toggle(spot.id);
                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpotDetailPage(spot: spot),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
