import 'package:formz/formz.dart';

class EmailValidator extends FormzInput<String, EmailValidationError> {
  const EmailValidator.pure() : super.pure('');
  const EmailValidator.dirty([super.value = '']) : super.dirty();

  static final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  @override
  EmailValidationError? validator(String value) {
    return _emailRegex.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}

enum EmailValidationError { invalid }
