import 'package:flutter/services.dart';

class InputFormatters {
  /// Allows only digits (0-9)
  static final digitsOnly = FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));

  /// Allows only alphabets (a-z, A-Z)
  static final lettersOnly =
      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'));

  /// Allows alphanumeric characters (a-z, A-Z, 0-9)
  static final alphanumeric =
      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]'));

  /// Phone number formatter (XXX-XXX-XXXX)
  static final phoneNumber =
      FilteringTextInputFormatter.allow(RegExp(r'[\d-]'));

  /// Maximum length formatter
  static TextInputFormatter maxLength(int length) {
    return LengthLimitingTextInputFormatter(length);
  }

  /// Custom regex formatter
  static TextInputFormatter regex(String pattern) {
    return FilteringTextInputFormatter.allow(RegExp(pattern));
  }

  /// Credit card formatter (XXXX-XXXX-XXXX-XXXX)
  static List<TextInputFormatter> creditCard = [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(16),
    _CreditCardInputFormatter(),
  ];
}

class _CreditCardInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    final newText = StringBuffer();
    for (var i = 0; i < newValue.text.length; i++) {
      if (i > 0 && i % 4 == 0) {
        newText.write('-');
      }
      newText.write(newValue.text[i]);
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
