import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';

final class StrokeColor extends ThemeExtension<StrokeColor> {
  final Color primaryStrokeColor;
  final Color secondaryStrokeColor;

  StrokeColor({required this.primaryStrokeColor, required this.secondaryStrokeColor});

  @override
  ThemeExtension<StrokeColor> copyWith(
      {Color? primaryStrokeColor, Color? secondaryStrokeColor}) {
    return StrokeColor(
        primaryStrokeColor: primaryStrokeColor ?? this.primaryStrokeColor,
        secondaryStrokeColor: secondaryStrokeColor ?? this.secondaryStrokeColor);
  }

  @override
  ThemeExtension<StrokeColor> lerp(
      covariant ThemeExtension<StrokeColor>? other, double t) {
    if (other is! StrokeColor) return this;

    return StrokeColor(
        primaryStrokeColor:
        Color.lerp(primaryStrokeColor, other.primaryStrokeColor, t) ??
            primaryStrokeColor,
        secondaryStrokeColor:
        Color.lerp(secondaryStrokeColor, other.secondaryStrokeColor, t) ??
            secondaryStrokeColor);
  }

  static final light = StrokeColor(
      primaryStrokeColor: AppColorConstants.primaryLight,
      secondaryStrokeColor: AppColorConstants.primaryLight);

  static final dark = StrokeColor(
      primaryStrokeColor: AppColorConstants.primaryDark,
      secondaryStrokeColor: AppColorConstants.primaryDark);
}
