import 'package:flutter_test/flutter_test.dart';
import 'package:spots/favorites_cubit.dart';

void main() {
  test('toggle adds an ID and removes it again', () {
    final cubit = FavoritesCubit();
    addTearDown(cubit.close);

    cubit.toggle('1');
    expect(cubit.state, contains('1'));

    cubit.toggle('1');
    expect(cubit.state, isNot(contains('1')));
  });

  test('toggle emits a new set', () {
    final cubit = FavoritesCubit();
    addTearDown(cubit.close);
    final before = cubit.state;

    cubit.toggle('1');

    expect(identical(before, cubit.state), isFalse);
  });
}
