// Kata 2: Immutable class
//
// Task: write Spot with final fields, a constructor with named parameters
// and copyWith.
//
// Note: this pad shows compile errors until Spot is complete. That is
// expected, main() below tells you what Spot must offer.
//
// Expected output:
//   1 Riverside Cafe https://example.com/cafe.jpg
//   1 Cafe Emil https://example.com/cafe.jpg
//   2 City Park null

class Spot {
  // TODO: final fields id (String), name (String), imageUrl (String?)
  // TODO: constructor with named parameters: id and name are required,
  //       imageUrl is optional
  // TODO: copyWith({String? name, ...}) returns a new Spot and keeps
  //       every field that was not passed
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
