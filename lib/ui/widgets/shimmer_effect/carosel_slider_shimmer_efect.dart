import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CaroselSliderShimmerEfect extends StatelessWidget {
  const CaroselSliderShimmerEfect({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: const Duration(seconds: 3),
      interval:
          const Duration(seconds: 5),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.backgroundColors.primaryBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
