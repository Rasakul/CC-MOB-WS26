import 'package:flutter_bloc/flutter_bloc.dart';

/// Holds the IDs of all favourite spots.
class FavoritesCubit extends Cubit<Set<String>> {
  FavoritesCubit() : super({});

  void toggle(String id) {
    // Copy the set first. A Cubit ignores a state that is equal to the
    // current one, so changing the old set and emitting it does nothing.
    final favoriteIds = Set<String>.of(state);
    if (favoriteIds.contains(id)) {
      favoriteIds.remove(id);
    } else {
      favoriteIds.add(id);
    }
    emit(favoriteIds);
  }
}
