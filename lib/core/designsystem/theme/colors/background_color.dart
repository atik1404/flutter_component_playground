part of 'app_colors_aggregator.dart';

final class BackgroundColor extends ThemeExtension<BackgroundColor>
    with ColorFieldsMixin<BackgroundColor> {
  final Color primaryBackgroundColor;
  final Color secondaryBackgroundColor;

  BackgroundColor._({
    required this.primaryBackgroundColor,
    required this.secondaryBackgroundColor,
  });

  @override
  List<Color> get colorFields =>
      [primaryBackgroundColor, secondaryBackgroundColor];

  @override
  ThemeExtension<BackgroundColor> copyWith({
    Color? primaryBackgroundColor,
    Color? secondaryBackgroundColor,
  }) {
    return copyWithList([
      primaryBackgroundColor,
      secondaryBackgroundColor,
    ]);
  }

  @override
  BackgroundColor createInstance(List<Color> colors) {
    return BackgroundColor._(
      primaryBackgroundColor: colors[0],
      secondaryBackgroundColor: colors[1],
    );
  }

  static final _lightThemeColor = BackgroundColor._(
    primaryBackgroundColor: AppColorConstants.primaryBackgroundLight,
    secondaryBackgroundColor: AppColorConstants.secondaryBackgroundLight,
  );

  static final _darkThemeColor = BackgroundColor._(
    primaryBackgroundColor: AppColorConstants.primaryBackgroundDark,
    secondaryBackgroundColor: AppColorConstants.secondaryBackgroundDark,
  );
}
