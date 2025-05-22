import 'package:formz/formz.dart';

class PhoneNumberValidator
    extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumberValidator.pure() : super.pure('');
  const PhoneNumberValidator.dirty([super.value = '']) : super.dirty();

  @override
  PhoneNumberValidationError? validator(String value) {
    return value.length >= 11 ? null : PhoneNumberValidationError.invalid;
  }
}

enum PhoneNumberValidationError { invalid }
