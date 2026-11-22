// Kata 3: Collections (solution)
//
// Task: from a List<Spot>, get the names of all favourites as List<String>.
//
// Expected output:
//   [Riverside Cafe, Old Town Library]

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

// where and map return a lazy Iterable, toList() turns it into a List.
List<String> favoriteNames(List<Spot> spots) {
  return spots.where((s) => s.isFavorite).map((s) => s.name).toList();
}

// Bonus: the same with a collection-for.
List<String> favoriteNamesBonus(List<Spot> spots) {
  return [
    for (final s in spots)
      if (s.isFavorite) s.name,
  ];
}

void main() {
  print(favoriteNames(spots));
}
