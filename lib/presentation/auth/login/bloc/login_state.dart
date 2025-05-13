import 'package:flutter_component_playground/core/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/core/common/formvalidator/password_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(PasswordValidator.pure()) PasswordValidator password,
    //@Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default('') String errorMessage,
  }) = _LoginState;
}

// @freezed
// abstract class LoginState with _$LoginState {
//   const factory LoginState({
//     @Default('') String email,
//     @Default('') String password,
//     @Default('') String emailError,
//     @Default('') String passwordError,
//     @Default(false) bool isSubmitting,
//     @Default(false) bool isSuccess,
//   }) = _LoginState;
// }