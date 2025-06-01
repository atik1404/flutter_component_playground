import 'package:formz/formz.dart';

class OtpValidator extends FormzInput<String, OtpValidationError> {
  const OtpValidator.pure() : super.pure('');
  const OtpValidator.dirty([super.value = '']) : super.dirty();

  @override
  OtpValidationError? validator(String value) {
    return value.length == 4 ? null : OtpValidationError.invalid;
  }
}

enum OtpValidationError { invalid }
