part of 'dimension_aggregator.dart';

final class IconSize extends ThemeExtension<IconSize>
    with NumericFieldsMixin<IconSize> {
  final double small;
  final double medium;
  final double base;
  final double large;

  IconSize._({
    required this.small,
    required this.medium,
    required this.base,
    required this.large,
  });

  @override
  ThemeExtension<IconSize> copyWith({
    double? small,
    double? medium,
    double? base,
    double? large,
  }) {
    return copyWithList([small, medium, base, large]);
  }

  @override
  IconSize createInstance(List<double> values) {
    return IconSize._(
      small: values[0],
      medium: values[1],
      base: values[2],
      large: values[3],
    );
  }

  @override
  List<double> get numericFields => [small, medium, base, large];

  static final _instance = IconSize._(
    small: 16,
    medium: 20,
    base: 24,
    large: 32,
  );
}
