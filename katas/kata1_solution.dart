// Kata 1: Null safety (solution)
//
// Task: greet(String? name) returns "Hello, guest" when name is null,
// otherwise "Hello, <name>".
//
// Expected output:
//   Hello, guest
//   Hello, Ada

String greet(String? name) {
  return 'Hello, ${name ?? 'guest'}';
}

void main() {
  print(greet(null));
  print(greet('Ada'));
}
