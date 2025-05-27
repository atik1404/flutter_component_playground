part of 'dimension_aggregator.dart';

final class ShapeRadius extends ThemeExtension<ShapeRadius>
    with NumericFieldsMixin<ShapeRadius> {
  final double small;
  final double medium;
  final double base;
  final double large;
  final double xLarge;

  ShapeRadius._({
    required this.small,
    required this.medium,
    required this.base,
    required this.large,
    required this.xLarge,
  });

  @override
  ThemeExtension<ShapeRadius> copyWith({
    double? small,
    double? medium,
    double? base,
    double? large,
    double? xLarge,
  }) {
    return copyWithList([small, medium, base, large, xLarge]);
  }

  @override
  ShapeRadius createInstance(List<double> values) {
    return ShapeRadius._(
      small: values[0],
      medium: values[1],
      base: values[2],
      large: values[3],
      xLarge: values[4],
    );
  }

  @override
  List<double> get numericFields => [small, medium, base, large, xLarge];

  static final _instance = ShapeRadius._(
    small: 5,
    medium: 8,
    base: 16,
    large: 24,
    xLarge: 32,
  );
}
