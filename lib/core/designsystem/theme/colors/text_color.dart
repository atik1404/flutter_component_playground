part of 'app_colors_aggregator.dart';

final class TextColor extends ThemeExtension<TextColor>
    with ColorFieldsMixin<TextColor> {
  final Color primaryTextColor;
  final Color secondaryTextColor;

  TextColor._(
      {required this.primaryTextColor, required this.secondaryTextColor,});

  @override
  ThemeExtension<TextColor> copyWith({
    Color? primaryTextColor,
    Color? secondaryTextColor,
  }) {
    return copyWithList([
      primaryTextColor,
      secondaryTextColor,
    ]);
  }

  @override
  List<Color> get colorFields => [primaryTextColor, secondaryTextColor];

  @override
  TextColor createInstance(List<Color> colors) {
    return TextColor._(
      primaryTextColor: colors[0],
      secondaryTextColor: colors[1],
    );
  }

  static final _lightThemeColor = TextColor._(
    primaryTextColor: AppColorConstants.primaryTextLight,
    secondaryTextColor: AppColorConstants.secondaryTextLight,
  );

  static final _darkThemeColor = TextColor._(
    primaryTextColor: AppColorConstants.primaryTextDark,
    secondaryTextColor: AppColorConstants.secondaryTextDark,
  );
}
