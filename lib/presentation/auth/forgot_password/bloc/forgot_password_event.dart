
import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_password_event.freezed.dart';

@freezed
abstract class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.onPageChanged(int index) = OnPageChanged;
  const factory ForgotPasswordEvent.emailChanged(String email) = EmailChanged;
  const factory ForgotPasswordEvent.newPasswordChanged(String password) = NewPasswordChanged;
  const factory ForgotPasswordEvent.confirmPasswordChanged(String confirmPassword) = ConfirmPasswordChanged;
  const factory ForgotPasswordEvent.otpChanged(String otp) = OtpChanged;
  const factory ForgotPasswordEvent.sentOtp() = SendOtp;
  const factory ForgotPasswordEvent.resentOtp() = ResendOtp;
  const factory ForgotPasswordEvent.verifyOtp() = VerifyOtp;
  const factory ForgotPasswordEvent.resetPassword() = ResetPassword;
}
