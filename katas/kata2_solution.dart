// Kata 2: Immutable class (solution)
//
// Task: write Spot with final fields, a constructor with named parameters
// and copyWith.
//
// Expected output:
//   1 Riverside Cafe https://example.com/cafe.jpg
//   1 Cafe Emil https://example.com/cafe.jpg
//   2 City Park null

class Spot {
  final String id;
  final String name;
  final String? imageUrl;

  const Spot({required this.id, required this.name, this.imageUrl});

  Spot copyWith({String? id, String? name, String? imageUrl}) {
    return Spot(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}

void main() {
  final cafe = Spot(
    id: '1',
    name: 'Riverside Cafe',
    imageUrl: 'https://example.com/cafe.jpg',
  );
  final renamed = cafe.copyWith(name: 'Cafe Emil');
  final park = Spot(id: '2', name: 'City Park');

  print('${cafe.id} ${cafe.name} ${cafe.imageUrl}');
  print('${renamed.id} ${renamed.name} ${renamed.imageUrl}');
  print('${park.id} ${park.name} ${park.imageUrl}');
}
