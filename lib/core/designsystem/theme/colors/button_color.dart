import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';

final class ButtonColor extends ThemeExtension<ButtonColor> {
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color primaryContainer;
  final Color onPrimaryContainer;

  ButtonColor(
      {required this.primary,
      required this.onPrimary,
      required this.secondary,
      required this.onSecondary,
      required this.primaryContainer,
      required this.onPrimaryContainer});

  @override
  ThemeExtension<ButtonColor> copyWith(
      {Color? primary,
      Color? onPrimary,
      Color? secondary,
      Color? onSecondary,
      Color? primaryContainer,
      Color? onPrimaryContainer}) {
    return ButtonColor(
      primary: primary ?? this.primary,
      onPrimary: primary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
    );
  }

  @override
  ThemeExtension<ButtonColor> lerp(
      covariant ThemeExtension<ButtonColor>? other, double t) {
    if (other is! ButtonColor) return this;

    return ButtonColor(
        primary: Color.lerp(primary, other.primary, t) ?? primary,
        onPrimary: Color.lerp(onPrimary, other.onPrimary, t) ?? onPrimary,
        secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
        onSecondary:
            Color.lerp(onSecondary, other.onSecondary, t) ?? onSecondary,
        primaryContainer:
            Color.lerp(primaryContainer, other.primaryContainer, t) ??
                primaryContainer,
        onPrimaryContainer:
            Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t) ??
                onPrimaryContainer);
  }

  static final light = ButtonColor(
      primary: AppColorConstants.primaryLight,
      onPrimary: AppColorConstants.white,
      secondary: AppColorConstants.secondaryLight,
      onSecondary: AppColorConstants.white,
      primaryContainer: AppColorConstants.primaryContainerLight,
      onPrimaryContainer: AppColorConstants.white);

  static final dark = ButtonColor(
      primary: AppColorConstants.primaryDark,
      onPrimary: AppColorConstants.white,
      secondary: AppColorConstants.secondaryDark,
      onSecondary: AppColorConstants.white,
      primaryContainer: AppColorConstants.primaryContainerDark,
      onPrimaryContainer: AppColorConstants.white);
}
