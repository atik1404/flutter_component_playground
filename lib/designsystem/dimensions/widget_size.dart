part of 'dimension_aggregator.dart';

final class WidgetSize extends ThemeExtension<WidgetSize>
    with NumericFieldsMixin<WidgetSize> {
  final double buttonHeightSM;
  final double buttonHeightMD;
  final double buttonHeightRG;
  final double textFieldHeight;

  WidgetSize._({
    required this.buttonHeightSM,
    required this.buttonHeightMD,
    required this.buttonHeightRG,
    required this.textFieldHeight,
  });

  @override
  ThemeExtension<WidgetSize> copyWith({
    double? buttonHeightSM,
    double? buttonHeightMD,
    double? buttonHeightRG,
    double? textFieldHeight,
  }) {
    return copyWithList(
        [buttonHeightSM, buttonHeightMD, buttonHeightRG, textFieldHeight]);
  }

  @override
  WidgetSize createInstance(List<double> values) {
    return WidgetSize._(
      buttonHeightSM: values[0],
      buttonHeightMD: values[1],
      buttonHeightRG: values[2],
      textFieldHeight: values[3],
    );
  }

  @override
  List<double> get numericFields =>
      [buttonHeightSM, buttonHeightMD, buttonHeightRG, textFieldHeight];

  static final _instance = WidgetSize._(
    buttonHeightSM: 24,
    buttonHeightMD: 36,
    buttonHeightRG: 48,
    textFieldHeight: 48,
  );
}
