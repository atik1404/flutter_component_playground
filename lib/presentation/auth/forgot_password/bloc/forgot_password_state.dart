import 'package:flutter_component_playground/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/otp_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(0) int currentPageIndex,
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(OtpValidator.pure()) OtpValidator otp,
    @Default('') String remainTime,
    @Default(true) bool isTimerRunning,
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
  progressBar,
  success,
  error,
}

enum ForgotPasswordPage {
  emailForm,
  otpForm,
  passwordForm,
}
