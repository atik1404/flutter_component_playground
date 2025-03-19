part of 'theme_context_extension.dart';

extension _ThemeDataExtension on ThemeData {
  AppColorsAggregator get _themeColors =>
      extension<AppColorsAggregator>() ?? AppColorsAggregator.lightThemeColors;
  DimensionAggregator get _dimensions => extension<DimensionAggregator>()!;
  AppTypography get _typography => extension<AppTypography>()!;
}
