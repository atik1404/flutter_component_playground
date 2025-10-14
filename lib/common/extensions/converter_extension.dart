/// Base class for all converter extensions in the app
sealed class ConverterExtension {}

/// Extensions for numeric conversions
extension DoubleConverterExtension on double {
  /// Returns this double rounded to [fractionDigits] decimal places.
  double roundToDecimal(int fractionDigits) {
    if (fractionDigits < 0) return this;
    
    return double.parse(toStringAsFixed(fractionDigits));
  }

  /// Returns this double rounded to 2 decimal places.
  double get roundToTwoDecimalPlaces => roundToDecimal(2);
  
  /// Converts to percentage string with specified decimal places
  String toPercentage([int fractionDigits = 1]) => 
      '${(this * 100).roundToDecimal(fractionDigits)}%';
  
  /// Converts to currency format
  String toCurrency([String symbol = r'$', int fractionDigits = 2]) =>
      '$symbol${roundToDecimal(fractionDigits).toStringAsFixed(fractionDigits)}';
}

/// Extensions for integer conversions
extension IntConverterExtension on int {
  /// Converts minutes to a formatted string in hours and minutes.
  /// For example, 125 minutes becomes "2h 5m".
  String toHoursAndMinutes() {
    if (this < 0) return '0h 0m';
    
    final hours = this ~/ 60;
    final minutes = this % 60;
    
    if (hours == 0) return '${minutes}m';
    if (minutes == 0) return '${hours}h';

    return '${hours}h ${minutes}m';
  }
  
  /// Converts seconds to mm:ss format
  String toMinutesSeconds() {
    final minutes = this ~/ 60;
    final seconds = this % 60;

    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}