# Spots

Example app of the workshop "Crash Course Flutter" (CC-MOB).

Every branch contains the sample solution of the previous hands-on part.
If you get stuck, check out the next branch and continue from there.

| Branch | Start of |
| --- | --- |
| `01-start` | Hands-on 1.2: Spot card and list |
| `02-list` | Hands-on 1.3: Favourites and detail page |
| `03-navigation` | Hands-on 1.4 |

The Dart katas of hands-on 1.1 are in `katas/`.

## Run the app

```
flutter pub get
flutter run -d chrome
```

## Hands-on 1.3: Favourites and detail page

Start on branch `02-list`.

1. `SpotListPage` keeps a set of favourite IDs as state. `SpotCard` gets
   `isFavorite` and an `onToggle` callback.
2. A tap on the card opens `SpotDetailPage` with the selected spot.
3. The detail page also shows a heart that toggles the favourite.

**Done when:** The heart toggles in the list and the detail page shows the
right spot.

**Watch out:** Step 3 is meant to hurt: the state lives in the list, the
detail page cannot reach it easily.

**Bonus:** Lift the state up far enough that both pages share it.

Stuck? The sample solution is on the next branch:

```
git checkout 03-navigation
```
