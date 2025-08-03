part of 'app_colors_aggregator.dart';

final class BackgroundColor extends ThemeExtension<BackgroundColor>
    with ColorFieldsMixin<BackgroundColor> {
  final Color primaryBackgroundColor;
  final Color secondaryBackgroundColor;
  final Color introductionBackgroundColor;

  BackgroundColor._({
    required this.primaryBackgroundColor,
    required this.secondaryBackgroundColor,
    required this.introductionBackgroundColor,
  });

  @override
  List<Color> get colorFields => [
        primaryBackgroundColor,
        secondaryBackgroundColor,
        introductionBackgroundColor,
      ];

  @override
  ThemeExtension<BackgroundColor> copyWith({
    Color? primaryBackgroundColor,
    Color? secondaryBackgroundColor,
    Color? introductionBackgroundColor,
  }) {
    return copyWithList([
      primaryBackgroundColor,
      secondaryBackgroundColor,
      introductionBackgroundColor,
    ]);
  }

  @override
  BackgroundColor createInstance(List<Color> colors) {
    return BackgroundColor._(
      primaryBackgroundColor: colors[0],
      secondaryBackgroundColor: colors[1],
      introductionBackgroundColor: colors[2],
    );
  }

  static final _lightThemeColor = BackgroundColor._(
    primaryBackgroundColor: AppColorConstants.primaryBackgroundLight,
    secondaryBackgroundColor: AppColorConstants.secondaryBackgroundLight,
    introductionBackgroundColor: AppColorConstants.introductionBackgroundColor,
  );

  static final _darkThemeColor = BackgroundColor._(
    primaryBackgroundColor: AppColorConstants.primaryBackgroundDark,
    secondaryBackgroundColor: AppColorConstants.secondaryBackgroundDark,
    introductionBackgroundColor: AppColorConstants.introductionBackgroundColor,
  );
}
