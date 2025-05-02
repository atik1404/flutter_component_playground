part of 'app_colors_aggregator.dart';

final class ButtonColor extends ThemeExtension<ButtonColor>
    with ColorFieldsMixin<ButtonColor> {
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color disable;

  ButtonColor._({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.disable,
  });

  @override
  ThemeExtension<ButtonColor> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? primaryContainer,
    Color? onPrimaryContainer,
    Color? disable,
  }) {
    return copyWithList([
      primary,
      onPrimary,
      secondary,
      onSecondary,
      primaryContainer,
      onPrimaryContainer,
      disable,
    ]);
  }

  @override
  List<Color> get colorFields => [
        primary,
        onPrimary,
        secondary,
        onSecondary,
        primaryContainer,
        onPrimaryContainer,
        disable,
      ];

  @override
  ButtonColor createInstance(List<Color> colors) {
    return ButtonColor._(
      primary: colors[0],
      onPrimary: colors[1],
      secondary: colors[2],
      onSecondary: colors[3],
      primaryContainer: colors[4],
      onPrimaryContainer: colors[5],
      disable: colors[6],
    );
  }

  static final _lightThemeColor = ButtonColor._(
    primary: AppColorConstants.primaryLight,
    onPrimary: AppColorConstants.white,
    secondary: AppColorConstants.secondaryLight,
    onSecondary: AppColorConstants.white,
    primaryContainer: AppColorConstants.primaryContainerLight,
    onPrimaryContainer: AppColorConstants.white,
    disable: AppColorConstants.disableButtonColor,
  );

  static final _darkThemeColor = ButtonColor._(
    primary: AppColorConstants.primaryDark,
    onPrimary: AppColorConstants.white,
    secondary: AppColorConstants.secondaryDark,
    onSecondary: AppColorConstants.white,
    primaryContainer: AppColorConstants.primaryContainerDark,
    onPrimaryContainer: AppColorConstants.white,
    disable: AppColorConstants.disableButtonColor,
  );
}
