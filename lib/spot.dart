/// A place worth visiting.
///
/// A Spot never changes after it was created: all fields are final.
class Spot {
  const Spot({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    this.imageUrl,
  });

  final String id;
  final String name;
  final String category;
  final String description;
  final String? imageUrl;
}
