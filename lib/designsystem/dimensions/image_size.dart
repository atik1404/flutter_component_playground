part of 'dimension_aggregator.dart';

final class ImageSize extends ThemeExtension<ImageSize>
    with NumericFieldsMixin<ImageSize> {
  final double small;
  final double medium;
  final double base;
  final double large;

  ImageSize._({
    required this.small,
    required this.medium,
    required this.base,
    required this.large,
  });

  @override
  ThemeExtension<ImageSize> copyWith({
    double? small,
    double? medium,
    double? base,
    double? large,
  }) {
    return copyWithList([small, medium, base, large]);
  }

  @override
  ImageSize createInstance(List<double> values) {
    return ImageSize._(
      small: values[0],
      medium: values[1],
      base: values[2],
      large: values[3],
    );
  }

  @override
  List<double> get numericFields => [small, medium, base, large];

  static final _instance = ImageSize._(
    small: 24,
    medium: 32,
    base: 48,
    large: 80,
  );
}
