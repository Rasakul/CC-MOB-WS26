import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:spots/main.dart';
import 'package:spots/mock_spots.dart';
import 'package:spots/spot_card.dart';
import 'package:spots/spot_detail_page.dart';

void main() {
  // Not the first spot, to be sure the tapped one is shown.
  final spot = mockSpots[1];
  final detailPage = find.byType(SpotDetailPage);

  testWidgets('a tap on a card opens the detail page of that spot', (
    tester,
  ) async {
    await tester.pumpWidget(const SpotsApp());

    await tester.tap(find.text(spot.name));
    await tester.pumpAndSettle();

    expect(detailPage, findsOneWidget);
    expect(
      find.descendant(of: detailPage, matching: find.text(spot.name)),
      findsWidgets,
    );
    expect(
      find.descendant(of: detailPage, matching: find.text(spot.description)),
      findsOneWidget,
    );
  });

  testWidgets('a favourite set on the detail page shows in the list', (
    tester,
  ) async {
    await tester.pumpWidget(const SpotsApp());

    await tester.tap(find.text(spot.name));
    await tester.pumpAndSettle();
    await tester.tap(
      find.descendant(
        of: detailPage,
        matching: find.byIcon(Icons.favorite_border),
      ),
    );
    await tester.pump();
    expect(
      find.descendant(of: detailPage, matching: find.byIcon(Icons.favorite)),
      findsOneWidget,
    );

    await tester.pageBack();
    await tester.pumpAndSettle();

    final card = find.widgetWithText(SpotCard, spot.name);
    expect(
      find.descendant(of: card, matching: find.byIcon(Icons.favorite)),
      findsOneWidget,
    );
  });
}
