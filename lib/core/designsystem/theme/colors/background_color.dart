import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';

final class BackgroundColor extends ThemeExtension<BackgroundColor> {
  final Color primaryBackgroundColor;
  final Color secondaryBackgroundColor;

  BackgroundColor(
      {required this.primaryBackgroundColor,
      required this.secondaryBackgroundColor,});

  @override
  ThemeExtension<BackgroundColor> copyWith(
      {Color? primaryBackgroundColor, Color? secondaryBackgroundColor,}) {
    return BackgroundColor(
        primaryBackgroundColor:
        primaryBackgroundColor ?? this.primaryBackgroundColor,
        secondaryBackgroundColor:
        secondaryBackgroundColor ?? this.secondaryBackgroundColor,);
  }

  @override
  ThemeExtension<BackgroundColor> lerp(
      covariant ThemeExtension<BackgroundColor>? other, double t,) {
    if (other is! BackgroundColor) return this;

    return BackgroundColor(
        primaryBackgroundColor: Color.lerp(
                primaryBackgroundColor, other.primaryBackgroundColor, t) ??
            primaryBackgroundColor,
        secondaryBackgroundColor: Color.lerp(
                secondaryBackgroundColor, other.secondaryBackgroundColor, t) ??
            secondaryBackgroundColor,);
  }

  static final light = BackgroundColor(
      primaryBackgroundColor: AppColorConstants.primaryBackgroundLight,
      secondaryBackgroundColor: AppColorConstants.secondaryBackgroundLight,);

  static final dark = BackgroundColor(
      primaryBackgroundColor: AppColorConstants.primaryBackgroundDark,
      secondaryBackgroundColor: AppColorConstants.secondaryBackgroundDark,);
}
