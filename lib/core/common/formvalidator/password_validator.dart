import 'package:formz/formz.dart';

class PasswordValidator extends FormzInput<String, PasswordValidationError> {
  const PasswordValidator.pure() : super.pure('');
  const PasswordValidator.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    return value.length >= 6 ? null : PasswordValidationError.invalid;
  }
}

enum PasswordValidationError { invalid }
