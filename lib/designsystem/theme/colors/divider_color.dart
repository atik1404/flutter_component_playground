part of 'app_colors_aggregator.dart';

final class DividerColor extends ThemeExtension<DividerColor>
    with ColorFieldsMixin<DividerColor> {
  final Color primaryDividerColor;
  final Color secondaryDividerColor;

  DividerColor._({
    required this.primaryDividerColor,
    required this.secondaryDividerColor,
  });

  @override
  ThemeExtension<DividerColor> copyWith({
    Color? primaryDividerColor,
    Color? secondaryDividerColor,
  }) {
    return copyWithList([
      primaryDividerColor,
      secondaryDividerColor,
    ]);
  }

  @override
  List<Color> get colorFields => [primaryDividerColor, secondaryDividerColor];

  @override
  DividerColor createInstance(List<Color> colors) {
    return DividerColor._(
      primaryDividerColor: colors[0],
      secondaryDividerColor: colors[1],
    );
  }

  static final _lightThemeColor = DividerColor._(
    primaryDividerColor: AppColorConstants.primaryLight,
    secondaryDividerColor: AppColorConstants.primaryLight,
  );

  static final _darkThemeColor = DividerColor._(
    primaryDividerColor: AppColorConstants.primaryDark,
    secondaryDividerColor: AppColorConstants.primaryDark,
  );
}
