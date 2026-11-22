import 'package:material_ui/material_ui.dart';

import 'mock_spots.dart';
import 'spot.dart';
import 'spot_card.dart';
import 'spot_detail_page.dart';

class SpotListPage extends StatefulWidget {
  const SpotListPage({super.key});

  @override
  State<SpotListPage> createState() => _SpotListPageState();
}

class _SpotListPageState extends State<SpotListPage> {
  final Set<String> _favoriteIds = {};

  void _toggleFavorite(String id) {
    setState(() {
      if (_favoriteIds.contains(id)) {
        _favoriteIds.remove(id);
      } else {
        _favoriteIds.add(id);
      }
    });
  }

  void _openDetail(Spot spot) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SpotDetailPage(
            spot: spot,
            isFavorite: _favoriteIds.contains(spot.id),
            onToggle: () => _toggleFavorite(spot.id),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spots')),
      body: ListView.builder(
        itemCount: mockSpots.length,
        itemBuilder: (context, index) {
          final spot = mockSpots[index];
          return SpotCard(
            spot: spot,
            isFavorite: _favoriteIds.contains(spot.id),
            onToggle: () => _toggleFavorite(spot.id),
            onTap: () => _openDetail(spot),
          );
        },
      ),
    );
  }
}
