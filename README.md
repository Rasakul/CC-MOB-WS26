# Spots

Example app of the workshop "Crash Course Flutter" (CC-MOB).

Every branch contains the sample solution of the previous hands-on part.
If you get stuck, check out the next branch and continue from there.

| Branch | Start of |
| --- | --- |
| `01-start` | Hands-on 1.2: Spot card and list |
| `02-list` | Hands-on 1.3: Favourites and detail page |
| `03-navigation` | Hands-on 1.4: Move favourites into a Cubit |
| `04-cubit` | Interim task: search as its own Cubit |

The Dart katas of hands-on 1.1 are in `katas/`.

## Run the app

```
flutter pub get
flutter run -d chrome
```

## Interim task: search as its own Cubit

Start on branch `04-cubit`.

A search field above the list filters the spots by name. The search term
lives in its own `SpotFilterCubit`, not in the widget.

**Done when:** The list filters while you type and favourites still work.

**Bonus:** Also filter by category. The state then becomes its own class
with `copyWith`.

**Hint:** To read two Cubits in one place, nest two BlocBuilder widgets.

Stuck? The sample solution is on the next branch:

```
git checkout 05-filter
```
