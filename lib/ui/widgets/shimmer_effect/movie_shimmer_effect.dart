import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class MovieShimmerEffect extends StatelessWidget {
  const MovieShimmerEffect({super.key});

  Widget _buildMovieItemShimmer(BuildContext context) {
    final spacing = context.spacingSizes;
    final backgroundColors = context.backgroundColors.primaryBackgroundColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image placeholder with favorite and rating overlays
        Stack(
          children: [
            Shimmer(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(context.shapeRadius.medium),
                child: Container(
                  width: double.infinity,
                  height: 200.h,
                  color: backgroundColors,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: spacing.medium),

        // Title shimmer
        Shimmer(
          child: Container(
            height: 16.h,
            width: double.infinity,
            color: backgroundColors,
          ),
        ),
        SizedBox(height: spacing.xSmall),

        // Release date shimmer
        Shimmer(
          child: Container(
            height: 14.h,
            width: 120.w,
            color: backgroundColors,
          ),
        ),
        SizedBox(height: spacing.xSmall),

        // Language shimmer
        Shimmer(
          child: Container(
            height: 14.h,
            width: 80.w,
            color: backgroundColors,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: context.spacingSizes.large,
      mainAxisSpacing: context.spacingSizes.xLarge,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: .60,
      children: List.generate(6, (index) {
        return _buildMovieItemShimmer(context);
      }),
    );
  }
}
