import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class MovieCategoryShimmerEffect extends StatelessWidget {
  const MovieCategoryShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildCategoryShimmerList(context);
  }

  Widget _buildCategoryShimmerItem(BuildContext context) {
    return Shimmer(
      child: Container(
        margin: EdgeInsets.only(right: context.spacingSizes.small),
        height: 35.h,
        width: 80.w, // adjust width to resemble your real chip
        decoration: BoxDecoration(
          color: context.backgroundColors.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(context.shapeRadius.medium),
        ),
      ),
    );
  }

  Widget _buildCategoryShimmerList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer(
          child: Container(
            height: 20.h,
            width: 100.w,
            margin: EdgeInsets.only(bottom: context.spacingSizes.base),
            color: context.backgroundColors.primaryBackgroundColor,
          ),
        ),
        SizedBox(
          height: 35.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (_, __) => _buildCategoryShimmerItem(context),
          ),
        ),
      ],
    );
  }
}
