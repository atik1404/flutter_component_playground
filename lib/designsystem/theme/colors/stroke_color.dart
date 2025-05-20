part of 'app_colors_aggregator.dart';

final class StrokeColor extends ThemeExtension<StrokeColor>
    with ColorFieldsMixin<StrokeColor> {
  final Color primaryStrokeColor;
  final Color secondaryStrokeColor;

  StrokeColor._({
    required this.primaryStrokeColor,
    required this.secondaryStrokeColor,
  });

  @override
  ThemeExtension<StrokeColor> copyWith({
    Color? primaryStrokeColor,
    Color? secondaryStrokeColor,
  }) {
    return copyWithList([
      primaryStrokeColor,
      secondaryStrokeColor,
    ]);
  }

  @override
  List<Color> get colorFields => [primaryStrokeColor, secondaryStrokeColor];

  @override
  StrokeColor createInstance(List<Color> colors) {
    return StrokeColor._(
      primaryStrokeColor: colors[0],
      secondaryStrokeColor: colors[1],
    );
  }

  static final _lightThemeColor = StrokeColor._(
    primaryStrokeColor: AppColorConstants.primaryStrokeLight,
    secondaryStrokeColor: AppColorConstants.secondaryStrokeLight,
  );

  static final _darkThemeColor = StrokeColor._(
    primaryStrokeColor: AppColorConstants.primaryStrokeDark,
    secondaryStrokeColor: AppColorConstants.secondaryStrokeDark,
  );
}
