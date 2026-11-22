// Kata 3: Collections
//
// Task: from a List<Spot>, get the names of all favourites as List<String>.
//
// Expected output:
//   [Riverside Cafe, Old Town Library]
//
// Bonus: Solve it with a collection-for instead of map and where.

class Spot {
  final String name;
  final bool isFavorite;

  const Spot({required this.name, this.isFavorite = false});
}

const spots = [
  Spot(name: 'Riverside Cafe', isFavorite: true),
  Spot(name: 'City Park'),
  Spot(name: 'Old Town Library', isFavorite: true),
  Spot(name: 'Central Station'),
  Spot(name: 'Harbour Market'),
];

List<String> favoriteNames(List<Spot> spots) {
  // TODO: keep the favourites, take their names. Hint: where, map.
  return [];
}

void main() {
  print(favoriteNames(spots));
}
