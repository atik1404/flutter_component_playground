import 'package:flutter_component_playground/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(PasswordValidator.pure()) PasswordValidator password,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus formValidationStatus,
    @Default(false) bool isErrorVisible,
    @Default('') String loginErrorMessage,
  }) = _LoginState;
}
