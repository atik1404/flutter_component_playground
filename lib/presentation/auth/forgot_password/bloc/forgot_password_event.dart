
import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_password_event.freezed.dart';

@freezed
abstract class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.onPageChanged(int index) = OnPageChanged;
  const factory ForgotPasswordEvent.emailChanged(String email) = EmailChanged;
  const factory ForgotPasswordEvent.newPasswordChanged(String password) = NewPasswordChanged;
  const factory ForgotPasswordEvent.confirmPasswordChanged(String password) = ConfirmPasswordChanged;
  const factory ForgotPasswordEvent.otpChanged(String otp) = OtpChanged;
  const factory ForgotPasswordEvent.sentOtp(String phone) = SendOtp;
  const factory ForgotPasswordEvent.verifyOtp(String phone, String otp) = VerifyOtp;
  const factory ForgotPasswordEvent.resetPassword(String phone, String token, String password) = ResetPassword;
}
