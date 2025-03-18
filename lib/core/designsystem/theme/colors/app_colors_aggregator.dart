import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/appbar_color.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/background_color.dart';

final class AppColorsAggregator extends ThemeExtension<AppColorsAggregator>{
  final AppBarColor appBarColor;
  final BackgroundColor backgroundColor;

  AppColorsAggregator._({
    required this.appBarColor,
    required this.backgroundColor,
  });

  static final lightThemeColors = AppColorsAggregator._(
    appBarColor: AppBarColor._lightThemeColor,
    backgroundColor: AppBarColor._lightThemeColor,
  );

  static final darkThemeColor = AppColorsAggregator._(
    appBarColor: AppBarColor._darkThemeColor,
    backgroundColor: BackgroundColor._darkThemeColor,
  );

  @override
  ThemeExtension<AppColorsAggregator> copyWith({AppBarColor? appBarColor, BackgroundColor? backgroundColor}) {
    return AppColorsAggregator._(
      appBarColor: appBarColor ?? this.appBarColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  ThemeExtension<AppColorsAggregator> lerp(covariant ThemeExtension<AppColorsAggregator>? other, double t) {
    if (other == null) return this;

    return AppColorsAggregator._(
      appBarColor: interpolate(appBarColor, other.appBarColor, t) ?? appBarColor,
      backgroundColor: interpolate(backgroundColor, other.backgroundColor, t) ?? backgroundColor,
    );
  }

  T? interpolate<T extends ThemeExtension<T>>(T? a, T? b, double t,) {
    if (a == null || b == null) return a ?? b;

    return a.lerp(b, t) as T;
  }
}