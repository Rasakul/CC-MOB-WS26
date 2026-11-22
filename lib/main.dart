import 'package:material_ui/material_ui.dart';

import 'spot_list_page.dart';

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
      home: const SpotListPage(),
    );
  }
}
