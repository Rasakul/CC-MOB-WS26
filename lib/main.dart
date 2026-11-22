import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

import 'favorites_cubit.dart';
import 'spot_list_page.dart';

void main() {
  runApp(const SpotsApp());
}

class SpotsApp extends StatelessWidget {
  const SpotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Above MaterialApp, so every page finds the cubit.
    return BlocProvider(
      create: (context) => FavoritesCubit(),
      child: MaterialApp(
        title: 'Spots',
        // The debug banner would cover the favourites counter in the AppBar.
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        home: const SpotListPage(),
      ),
    );
  }
}
