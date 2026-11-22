// Kata 4: Futures
//
// Task: write a function loadSpotName() that uses Future.delayed to wait
// one second and then returns 'Riverside Cafe'. Call it with await.
//
// Expected output (the second line appears after one second):
//   Loading...
//   Riverside Cafe
//   Done

// TODO 1: write loadSpotName() here. It returns a Future<String>.
//         Hint: await Future.delayed(const Duration(seconds: 1));

Future<void> main() async {
  print('Loading...');
  // TODO 2: call loadSpotName() with await and print the result.
  print('Done');
}
