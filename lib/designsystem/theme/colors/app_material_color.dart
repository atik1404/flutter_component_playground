part of 'app_colors_aggregator.dart';

class AppMaterialColor extends ThemeExtension<AppMaterialColor>
    with ColorFieldsMixin<AppMaterialColor> {
  final Color primary;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color surface;
  final Color onSurface;
  final Color error;
  final Color onError;
  final Color inverseSurface;
  final Color onInverseSurface;

  AppMaterialColor._({
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.surface,
    required this.onSurface,
    required this.error,
    required this.onError,
    required this.inverseSurface,
    required this.onInverseSurface,
  });

  @override
  List<Color> get colorFields => [
        primary,
        onPrimary,
        primaryContainer,
        onPrimaryContainer,
        secondary,
        onSecondary,
        secondaryContainer,
        onSecondaryContainer,
        tertiary,
        onTertiary,
        surface,
        onSurface,
        error,
        onError,
        inverseSurface,
        onInverseSurface,
      ];

  @override
  AppMaterialColor createInstance(List<Color> colors) {
    return AppMaterialColor._(
      primary: colors[0],
      onPrimary: colors[1],
      primaryContainer: colors[2],
      onPrimaryContainer: colors[3],
      secondary: colors[4],
      onSecondary: colors[5],
      secondaryContainer: colors[6],
      onSecondaryContainer: colors[7],
      tertiary: colors[8],
      onTertiary: colors[9],
      surface: colors[10],
      onSurface: colors[11],
      error: colors[12],
      onError: colors[13],
      inverseSurface: colors[14],
      onInverseSurface: colors[15],
    );
  }

  @override
  AppMaterialColor copyWith({
    Color? primary,
    Color? onPrimary,
    Color? primaryContainer,
    Color? onPrimaryContainer,
    Color? secondary,
    Color? onSecondary,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
    Color? tertiary,
    Color? onTertiary,
    Color? surface,
    Color? onSurface,
    Color? error,
    Color? onError,
    Color? inverseSurface,
    Color? onInverseSurface,
  }) {
    return copyWithList([
      primary,
      onPrimary,
      primaryContainer,
      onPrimaryContainer,
      secondary,
      onSecondary,
      secondaryContainer,
      onSecondaryContainer,
      tertiary,
      onTertiary,
      surface,
      onSurface,
      error,
      onError,
      inverseSurface,
      onInverseSurface,
    ]);
  }

  @override
  AppMaterialColor lerp(
    ThemeExtension<AppMaterialColor>? other,
    double t,
  ) {
    if (other is! AppMaterialColor) {
      return this;
    }

    return AppMaterialColor._(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t) ?? onPrimary,
      primaryContainer:
          Color.lerp(primaryContainer, other.primaryContainer, t) ??
              primaryContainer,
      onPrimaryContainer:
          Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t) ??
              onPrimaryContainer,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t) ?? onSecondary,
      secondaryContainer:
          Color.lerp(secondaryContainer, other.secondaryContainer, t) ??
              secondaryContainer,
      onSecondaryContainer:
          Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t) ??
              onSecondaryContainer,
      tertiary: Color.lerp(tertiary, other.tertiary, t) ?? tertiary,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t) ?? onTertiary,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      onSurface: Color.lerp(onSurface, other.onSurface, t) ?? onSurface,
      error: Color.lerp(error, other.error, t) ?? error,
      onError: Color.lerp(onError, other.onError, t) ?? onError,
      inverseSurface:
          Color.lerp(inverseSurface, other.inverseSurface, t) ?? inverseSurface,
      onInverseSurface:
          Color.lerp(onInverseSurface, other.onInverseSurface, t) ??
              onInverseSurface,
    );
  }

  static final _lightThemeColor = AppMaterialColor._(
    primary: AppColorConstants.primaryLight,
    onPrimary: AppColorConstants.white,
    primaryContainer: AppColorConstants.primaryContainerLight,
    onPrimaryContainer: AppColorConstants.black,
    secondary: AppColorConstants.secondaryLight,
    onSecondary: AppColorConstants.white,
    secondaryContainer: AppColorConstants.secondaryContainerLight,
    onSecondaryContainer: AppColorConstants.black,
    tertiary: AppColorConstants.tertiaryLight,
    onTertiary: AppColorConstants.white,
    surface: BackgroundColor._lightThemeColor.primaryBackgroundColor,
    onSurface: AppColorConstants.black,
    error: AppColorConstants.errorLight,
    onError: AppColorConstants.white,
    inverseSurface: AppColorConstants.white,
    onInverseSurface: AppColorConstants.surfaceLight,
  );

  static final _darkThemeColor = AppMaterialColor._(
    primary: AppColorConstants.primaryDark,
    onPrimary: AppColorConstants.white,
    primaryContainer: AppColorConstants.primaryContainerDark,
    onPrimaryContainer: AppColorConstants.black,
    secondary: AppColorConstants.secondaryDark,
    onSecondary: AppColorConstants.white,
    secondaryContainer: AppColorConstants.secondaryContainerDark,
    onSecondaryContainer: AppColorConstants.black,
    tertiary: AppColorConstants.tertiaryDark,
    onTertiary: AppColorConstants.white,
    surface: BackgroundColor._lightThemeColor.primaryBackgroundColor,
    onSurface: AppColorConstants.black,
    error: AppColorConstants.errorDark,
    onError: AppColorConstants.white,
    inverseSurface: AppColorConstants.white,
    onInverseSurface: AppColorConstants.surfaceDark,
  );
}
