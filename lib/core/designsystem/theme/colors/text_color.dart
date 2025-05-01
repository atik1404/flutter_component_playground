part of 'app_colors_aggregator.dart';

final class TextColor extends ThemeExtension<TextColor>
    with ColorFieldsMixin<TextColor> {
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color hintTextColor;
  final Color whiteTextColor;

  TextColor._(
      {required this.primaryTextColor, required this.secondaryTextColor,required this.whiteTextColor, required this.hintTextColor,});

  @override
  ThemeExtension<TextColor> copyWith({
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? whiteTextColor,
  }) {
    return copyWithList([
      primaryTextColor,
      secondaryTextColor,
      whiteTextColor,
    ]);
  }

  @override
  List<Color> get colorFields => [primaryTextColor, secondaryTextColor, whiteTextColor];

  @override
  TextColor createInstance(List<Color> colors) {
    return TextColor._(
      primaryTextColor: colors[0],
      secondaryTextColor: colors[1],
      hintTextColor: colors[2],
      whiteTextColor: colors[3],
    );
  }

  static final _lightThemeColor = TextColor._(
    primaryTextColor: AppColorConstants.primaryTextLight,
    secondaryTextColor: AppColorConstants.secondaryTextLight,
    hintTextColor: AppColorConstants.hintTextColorLight,
    whiteTextColor: AppColorConstants.white,
  );

  static final _darkThemeColor = TextColor._(
    primaryTextColor: AppColorConstants.primaryTextDark,
    secondaryTextColor: AppColorConstants.secondaryTextDark,
    hintTextColor: AppColorConstants.hintTextColorDart,
    whiteTextColor: AppColorConstants.white,
  );
}
