import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';

final class TextColor extends ThemeExtension<TextColor> {
  final Color primaryTextColor;
  final Color secondaryTextColor;

  TextColor({required this.primaryTextColor, required this.secondaryTextColor});

  @override
  ThemeExtension<TextColor> copyWith(
      {Color? primaryTextColor, Color? secondaryTextColor}) {
    return TextColor(
        primaryTextColor: primaryTextColor ?? this.primaryTextColor,
        secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor);
  }

  @override
  ThemeExtension<TextColor> lerp(
      covariant ThemeExtension<TextColor>? other, double t) {
    if (other is! TextColor) return this;

    return TextColor(
        primaryTextColor:
            Color.lerp(primaryTextColor, other.primaryTextColor, t) ??
                primaryTextColor,
        secondaryTextColor:
            Color.lerp(secondaryTextColor, other.secondaryTextColor, t) ??
                secondaryTextColor);
  }

  static final light = TextColor(
      primaryTextColor: AppColorConstants.primaryTextLight,
      secondaryTextColor: AppColorConstants.secondaryTextLight);

  static final dark = TextColor(
      primaryTextColor: AppColorConstants.primaryTextDark,
      secondaryTextColor: AppColorConstants.secondaryTextDark);
}
