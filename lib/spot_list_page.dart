import 'package:material_ui/material_ui.dart';

import 'mock_spots.dart';
import 'spot_card.dart';

class SpotListPage extends StatelessWidget {
  const SpotListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spots')),
      body: ListView.builder(
        itemCount: mockSpots.length,
        itemBuilder: (context, index) {
          return SpotCard(spot: mockSpots[index]);
        },
      ),
    );
  }
}
