# Spots

Example app of the workshop "Crash Course Flutter" (CC-MOB).

Every branch contains the sample solution of the previous hands-on part.
If you get stuck, check out the next branch and continue from there.

| Branch | Start of |
| --- | --- |
| `01-start` | Hands-on 1.2: Spot card and list |
| `02-list` | Hands-on 1.3: Favourites and detail page |
| `03-navigation` | Hands-on 1.4: Move favourites into a Cubit |

The Dart katas of hands-on 1.1 are in `katas/`.

## Run the app

```
flutter pub get
flutter run -d chrome
```

## Hands-on 1.4: Move favourites into a Cubit

Start on branch `03-navigation`.

1. Add `flutter_bloc` as a dependency.
2. Write `FavoritesCubit`: its state is the set of favourite IDs, with a
   method `toggle(String id)`.
3. Provide it with `BlocProvider` above MaterialApp.
4. List and detail page read the state with `BlocBuilder` and call `toggle`.
5. Remove the old state and the callbacks passed to the detail page.

**Done when:** A favourite set on the detail page shows in the list after
going back. No setState left.

**Watch out:** Changing the old set and emitting it again works for one tap,
then nothing happens. Emit a new set.

**Bonus:** Show a favourites counter in the AppBar with `BlocSelector`.

Stuck? The sample solution is on the next branch:

```
git checkout 04-cubit
```
