# Spots

Example app of the workshop "Crash Course Flutter" (CC-MOB).

Every branch contains the sample solution of the previous hands-on part.
If you get stuck, check out the next branch and continue from there.

| Branch | Start of |
| --- | --- |
| `01-start` | Hands-on 1.2: Spot card and list |
| `02-list` | Hands-on 1.3: Favourites and detail page |

The Dart katas of hands-on 1.1 are in `katas/`.

## Run the app

```
flutter pub get
flutter run -d chrome
```

## Hands-on 1.2: Spot card and list

Start on branch `01-start`. The model is in `lib/spot.dart`, the data in
`lib/mock_spots.dart`.

1. Build `SpotCard` as its own widget: image placeholder on the left, name
   and category next to it, a heart icon on the right.
2. Build `SpotListPage` with `ListView.builder` that shows every mock spot
   as a SpotCard.

**Done when:** The list scrolls and no yellow-black overflow stripe shows,
even in a narrow window.

**Watch out:** Long names break the Row. Wrap the text column in `Expanded`.

**Bonus:** Use const constructors and take colours from the Theme.

The heart does nothing yet. That is part of hands-on 1.3.

Stuck? The sample solution is on the next branch:

```
git checkout 02-list
```
