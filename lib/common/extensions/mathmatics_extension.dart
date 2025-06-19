extension DoubleRoundingExtension on double {
  /// Returns this double rounded to [fractionDigits] decimal places.
  double roundToDecimal(int fractionDigits) =>
      double.parse(toStringAsFixed(fractionDigits));

  /// Returns this double rounded to 2 decimal places.
  double get roundToTwoDecimalPlaces => double.parse(toStringAsFixed(1));
}