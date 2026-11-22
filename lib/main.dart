import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const SpotsApp());
}

class SpotsApp extends StatelessWidget {
  const SpotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spots',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      // TODO: Hands-on 1.2: show your SpotListPage here instead.
      home: const PlaceholderPage(),
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spots')),
      // TODO: Hands-on 1.2: build SpotCard and SpotListPage, see README.md.
      //       The data is ready in mock_spots.dart.
      body: const Center(child: Text('Hands-on 1.2 starts here.')),
    );
  }
}
