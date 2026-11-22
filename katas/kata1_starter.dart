// Kata 1: Null safety
//
// Task: greet(String? name) returns "Hello, guest" when name is null,
// otherwise "Hello, <name>".
//
// Expected output:
//   Hello, guest
//   Hello, Ada

String greet(String? name) {
  // TODO: return the greeting. Hint: the ?? operator.
  throw UnimplementedError();
}

void main() {
  print(greet(null));
  print(greet('Ada'));
}
