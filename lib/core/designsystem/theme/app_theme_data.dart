import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/dimensions/dimension_aggregator.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_colors_aggregator.dart';
import 'package:flutter_component_playground/core/designsystem/typo/app_typography.dart';

final class AppThemeData {
  static ThemeData _themeData({
    required AppColorsAggregator appColorsAggregator,
    required Brightness brightness,
  }) {
    final materialTokens = appColorsAggregator.materialColor;
    final appBarTokens = appColorsAggregator.appBarColor;

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: materialTokens.primary,
        onPrimary: materialTokens.onPrimary,
        primaryContainer: materialTokens.primaryContainer,
        onPrimaryContainer: materialTokens.onPrimaryContainer,
        secondary: materialTokens.secondary,
        onSecondary: materialTokens.onSecondary,
        secondaryContainer: materialTokens.secondaryContainer,
        onSecondaryContainer: materialTokens.onSecondaryContainer,
        tertiary: materialTokens.tertiary,
        onTertiary: materialTokens.onTertiary,
        error: materialTokens.error,
        onError: materialTokens.onError,
        surface: materialTokens.surface,
        onSurface: materialTokens.onSurface,
        inverseSurface: materialTokens.inverseSurface,
        onInverseSurface: materialTokens.onInverseSurface,
        //surfaceContainer: ,
      ),
      fontFamily: "Roboto",
      extensions: [
        AppColorsAggregator.lightThemeColors,
        DimensionAggregator.instance,
        AppTypography.instance,
      ],
      //default appbar theme
      appBarTheme: AppBarTheme(
        backgroundColor: appBarTokens.secondaryContainer,
        iconTheme: IconThemeData(color: appBarTokens.onSecondaryContainer),
        titleTextStyle: AppTypography.instance.titleSmallMedium
            .copyWith(color: appBarTokens.onSecondaryContainer),
        shadowColor: appBarTokens.onSecondaryContainer,
        scrolledUnderElevation: 0.1,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }

  static ThemeData light() {
    return _themeData(
        appColorsAggregator: AppColorsAggregator.lightThemeColors,
        brightness: Brightness.light,);
  }

  static ThemeData dark() {
    return _themeData(
        appColorsAggregator: AppColorsAggregator.darkThemeColor,
        brightness: Brightness.light,);
  }
}
