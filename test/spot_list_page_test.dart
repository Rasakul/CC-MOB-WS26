import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:spots/mock_spots.dart';
import 'package:spots/spot_list_page.dart';

void main() {
  testWidgets('SpotListPage fits into a narrow window', (tester) async {
    // A narrow phone-sized surface: 320 x 640 logical pixels.
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const MaterialApp(home: SpotListPage()));

    // An overflow ("yellow-black stripe") is reported as an exception.
    expect(tester.takeException(), isNull);
    expect(find.text(mockSpots.first.name), findsOneWidget);
  });

  testWidgets('a tap on the heart toggles the favourite', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SpotListPage()));
    expect(find.byIcon(Icons.favorite), findsNothing);

    await tester.tap(find.byIcon(Icons.favorite_border).first);
    await tester.pump();
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();
    expect(find.byIcon(Icons.favorite), findsNothing);
  });
}
