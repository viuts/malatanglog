import 'package:flutter/material.dart';
import 'dart:math';

class BowlAnimation extends StatelessWidget {
  final List<String> selectedIngredients;
  final Map<String, String> ingredientEmojis;

  const BowlAnimation({
    super.key,
    required this.selectedIngredients,
    required this.ingredientEmojis,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // The Bowl
          Positioned(
            bottom: 20,
            child: Container(
              width: 180,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
              ),
            ),
          ),
          // Steam animation (simplified)
          ...List.generate(3, (index) => _SteamEffect(index: index)),
          // Ingredients
          ..._buildIngredientIcons(context),
          // Soup surface
          Positioned(
            bottom: 70,
            child: Container(
              width: 160,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildIngredientIcons(BuildContext context) {
    final List<Widget> icons = [];
    final random = Random(42); // Seed for consistent jitter

    for (int i = 0; i < selectedIngredients.length; i++) {
      final name = selectedIngredients[i];
      final emoji = ingredientEmojis[name] ?? '🍲';

      // Random placement within the bowl area
      final double leftOffset = (random.nextDouble() - 0.5) * 100;
      final double bottomOffset = 40 + (random.nextDouble() * 30);

      icons.add(
        AnimatedPositioned(
          key: ValueKey(name),
          duration: const Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          bottom: bottomOffset,
          left: (MediaQuery.of(context).size.width / 2) + leftOffset - 16,
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Text(emoji, style: const TextStyle(fontSize: 32)),
              );
            },
          ),
        ),
      );
    }
    return icons;
  }
}

class _SteamEffect extends StatefulWidget {
  final int index;
  const _SteamEffect({required this.index});

  @override
  State<_SteamEffect> createState() => _SteamEffectState();
}

class _SteamEffectState extends State<_SteamEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _yOffset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2 + widget.index),
    )..repeat();

    _opacity = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.3), weight: 30),
      TweenSequenceItem(tween: Tween(begin: 0.3, end: 0.0), weight: 70),
    ]).animate(_controller);

    _yOffset = Tween(begin: 0.0, end: -40.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          bottom: 100 + _yOffset.value,
          left:
              (MediaQuery.of(context).size.width / 2) -
              30 +
              (widget.index * 30),
          child: Opacity(
            opacity: _opacity.value,
            child: const Icon(Icons.cloud, color: Colors.white, size: 40),
          ),
        );
      },
    );
  }
}
