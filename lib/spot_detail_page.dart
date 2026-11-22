import 'package:material_ui/material_ui.dart';

import 'spot.dart';

class SpotDetailPage extends StatefulWidget {
  const SpotDetailPage({
    super.key,
    required this.spot,
    required this.isFavorite,
    required this.onToggle,
  });

  final Spot spot;
  final bool isFavorite;
  final VoidCallback onToggle;

  @override
  State<SpotDetailPage> createState() => _SpotDetailPageState();
}

class _SpotDetailPageState extends State<SpotDetailPage> {
  // The favourites live in SpotListPage, and this page is not rebuilt when
  // they change. So it keeps its own copy: the same state now exists twice.
  late bool _isFavorite = widget.isFavorite;

  void _toggle() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    widget.onToggle();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final spot = widget.spot;

    return Scaffold(
      appBar: AppBar(title: Text(spot.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Image placeholder. Real images follow later.
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.place,
              size: 64,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(spot.name, style: theme.textTheme.headlineSmall),
                    Text(
                      spot.category,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: _toggle,
                color: theme.colorScheme.primary,
                icon: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(spot.description, style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}
