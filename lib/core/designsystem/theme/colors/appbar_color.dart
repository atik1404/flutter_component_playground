import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';

final class AppbarColor extends ThemeExtension<AppbarColor> {
  final Color primaryAppBarColor;
  final Color secondaryAppBarColor;

  AppbarColor(
      {required this.primaryAppBarColor, required this.secondaryAppBarColor});

  @override
  ThemeExtension<AppbarColor> copyWith(
      {Color? primaryAppBarColor, Color? secondaryAppBarColor}) {
    return AppbarColor(
        primaryAppBarColor: primaryAppBarColor ?? this.primaryAppBarColor,
        secondaryAppBarColor:
            secondaryAppBarColor ?? this.secondaryAppBarColor);
  }

  @override
  ThemeExtension<AppbarColor> lerp(
      covariant ThemeExtension<AppbarColor>? other, double t) {
    if (other is! AppbarColor) return this;

    return AppbarColor(
        primaryAppBarColor: Color.lerp(primaryAppBarColor, other.primaryAppBarColor, t) ?? primaryAppBarColor,
        secondaryAppBarColor: Color.lerp(secondaryAppBarColor, other.secondaryAppBarColor, t) ?? secondaryAppBarColor
    );
  }

  static final light = AppbarColor(
      primaryAppBarColor: AppColorConstants.primaryLight,
      secondaryAppBarColor: AppColorConstants.primaryLight);

  static final dark = AppbarColor(
      primaryAppBarColor: AppColorConstants.primaryDark,
      secondaryAppBarColor: AppColorConstants.primaryDark);
}