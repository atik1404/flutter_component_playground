import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';

final class DividerColor extends ThemeExtension<DividerColor> {
  final Color primaryDividerColor;
  final Color secondaryDividerColor;

  DividerColor({required this.primaryDividerColor, required this.secondaryDividerColor});

  @override
  ThemeExtension<DividerColor> copyWith(
      {Color? primaryDividerColor, Color? secondaryDividerColor}) {
    return DividerColor(
        primaryDividerColor: primaryDividerColor ?? this.primaryDividerColor,
        secondaryDividerColor: secondaryDividerColor ?? this.secondaryDividerColor);
  }

  @override
  ThemeExtension<DividerColor> lerp(
      covariant ThemeExtension<DividerColor>? other, double t) {
    if (other is! DividerColor) return this;

    return DividerColor(
        primaryDividerColor:
        Color.lerp(primaryDividerColor, other.primaryDividerColor, t) ??
            primaryDividerColor,
        secondaryDividerColor:
        Color.lerp(secondaryDividerColor, other.secondaryDividerColor, t) ??
            secondaryDividerColor);
  }

  static final light = DividerColor(
      primaryDividerColor: AppColorConstants.primaryLight,
      secondaryDividerColor: AppColorConstants.primaryLight);

  static final dark = DividerColor(
      primaryDividerColor: AppColorConstants.primaryDark,
      secondaryDividerColor: AppColorConstants.primaryDark);
}
