import 'package:flutter_component_playground/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(0) int currentPageIndex,
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default('') String otp,
    @Default('') String remainTime,
    @Default('') String errorMessage,
    @Default(false) bool isErrorMessageVisible,
    @Default(PasswordValidator.pure()) PasswordValidator newPassword,
    @Default(PasswordValidator.pure()) PasswordValidator confirmPassword,
    @Default(false) bool isConfirmPasswordError,
    @Default(ForgotPasswordStatus.initial) ForgotPasswordStatus status,
    @Default(ForgotPasswordPage.emailForm) ForgotPasswordPage currentPage,
  }) = _ForgotPasswordState;
}

enum ForgotPasswordStatus {
  initial,
  loading,
  success,
  error,
}

enum ForgotPasswordPage {
  emailForm,
  otpForm,
  passwordForm,
}
