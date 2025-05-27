part of 'dimension_aggregator.dart';

final class DividerSize extends ThemeExtension<DividerSize>
    with NumericFieldsMixin<DividerSize> {
  final double thin;
  final double thick;

  DividerSize._({
    required this.thin,
    required this.thick,
  });

  @override
  ThemeExtension<DividerSize> copyWith({double? thin, double? thick}) {
    return copyWithList([thin, thick]);
  }

  @override
  DividerSize createInstance(List<double> values) {
    return DividerSize._(thin: values[0], thick: values[1]);
  }

  @override
  List<double> get numericFields => [thin, thick];

  static final _instance = DividerSize._(thin: 1, thick: 2);
}
