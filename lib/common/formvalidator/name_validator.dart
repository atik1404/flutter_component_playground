import 'package:formz/formz.dart';

class NameValidator extends FormzInput<String, NameValidationError> {
  const NameValidator.pure() : super.pure('');
  const NameValidator.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    return value.length >= 5 ? null : NameValidationError.invalid;
  }
}

enum NameValidationError { invalid }
