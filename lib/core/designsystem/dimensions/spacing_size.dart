part of 'dimension_aggregator.dart';

final class SpacingSize extends ThemeExtension<SpacingSize> with NumericFieldsMixin<SpacingSize>{

  final double xSmall;
  final double small;
  final double medium;
  final double base;
  final double large;
  final double xLarge;

  SpacingSize._({
    required this.xSmall,
    required this.small,
    required this.medium,
    required this.base,
    required this.large,
    required this.xLarge,
  });

  @override
  ThemeExtension<SpacingSize> copyWith({
    double? xSmall,
    double? small,
    double? medium,
    double? base,
    double? large,
    double? xLarge,
  }) {
    return copyWithList([xSmall,small,medium,base,large,xLarge]);
  }

  @override
  SpacingSize createInstance(List<double> values) {
    return SpacingSize._(
      xSmall: values[0],
      small: values[1],
      medium: values[2],
      base: values[3],
      large: values[4],
      xLarge: values[5],
    );
  }

  @override
  List<double> get numericFields => [xSmall,small,medium,base,large,xLarge];

  static final _instance = SpacingSize._(
    xSmall: 2,
    small: 4,
    medium: 8,
    base: 16,
    large: 24,
    xLarge: 32,
  );
}
