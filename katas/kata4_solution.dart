// Kata 4: Futures (solution)
//
// Task: write a function loadSpotName() that uses Future.delayed to wait
// one second and then returns 'Riverside Cafe'. Call it with await.
//
// Expected output (the second line appears after one second):
//   Loading...
//   Riverside Cafe
//   Done

Future<String> loadSpotName() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Riverside Cafe';
}

Future<void> main() async {
  print('Loading...');
  final name = await loadSpotName();
  print(name);
  print('Done');
}
