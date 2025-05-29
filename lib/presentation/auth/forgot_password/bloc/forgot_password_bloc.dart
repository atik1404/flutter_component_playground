import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/formvalidator/email_validator.dart';
import 'package:flutter_component_playground/common/formvalidator/password_validator.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_reset_password_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_send_otp_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_verify_otp_api_usecase.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_event.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final PostSendOtpApiUsecase _sendOtpApiUsecase;
  final PostVerifyOtpApiUsecase _verifyOtpApiUsecase;
  final PostResetPasswordApiUsecase _resetPasswordApiUsecase;

  ForgotPasswordBloc({
    required PostSendOtpApiUsecase postSendOtpApiUsecase,
    required PostVerifyOtpApiUsecase postVerifyOtpApiUsecase,
    required PostResetPasswordApiUsecase postResetPasswordApiUsecase,
  })  : _sendOtpApiUsecase = postSendOtpApiUsecase,
        _verifyOtpApiUsecase = postVerifyOtpApiUsecase,
        _resetPasswordApiUsecase = postResetPasswordApiUsecase,
        super(const ForgotPasswordState()) {
    on<EmailChanged>(_onEmailChanged);
    on<OtpChanged>(_onOtpChanged);
    on<NewPasswordChanged>(_onPasswordChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<SendOtp>(_sendOtp);
    on<VerifyOtp>(_verifyOtp);
    on<ResetPassword>(_resetPassword);
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      email: EmailValidator.dirty(event.email),
      status: ForgotPasswordStatus.initial,
    ));
  }

  void _onOtpChanged(
    OtpChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      otp: event.otp,
      status: ForgotPasswordStatus.initial,
    ));
  }

  void _onPasswordChanged(
    NewPasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      newPassword: PasswordValidator.dirty(event.password),
      status: ForgotPasswordStatus.initial,
    ));
  }

  void _onConfirmPasswordChanged(
    ConfirmPasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      confirmPassword: PasswordValidator.dirty(event.confirmPassword),
      status: ForgotPasswordStatus.initial,
    ));
  }

  void _sendOtp(
    SendOtp event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    if (state.email.isNotValid) {
      emit(state.copyWith(
        status: ForgotPasswordStatus.error,
        errorMessage: 'Please enter a valid email address.',
      ));

      return;
    }

    emit(state.copyWith(
      status: ForgotPasswordStatus.loading,
    ));

    await Future.delayed(const Duration(milliseconds: 2000));

    emit(state.copyWith(
      currentPage: ForgotPasswordPage.otpForm,
      currentPageIndex: 1,
      status: ForgotPasswordStatus.initial,
    ));
  }

  void _verifyOtp(
    VerifyOtp event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    // if (state.otp.length != 4) {
    //   emit(state.copyWith(
    //     status: ForgotPasswordStatus.error,
    //     errorMessage: 'Please enter a valid OTP',
    //   ));

    //   return;
    // }

    emit(state.copyWith(
      status: ForgotPasswordStatus.loading,
    ));

    await Future.delayed(const Duration(milliseconds: 2000));

    emit(state.copyWith(
      currentPage: ForgotPasswordPage.passwordForm,
      currentPageIndex: 2,
      status: ForgotPasswordStatus.initial,
    ));
  }

  void _resetPassword(
    ResetPassword event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    // if (state.newPassword.isNotValid || state.confirmPassword.isNotValid) {
    //   emit(state.copyWith(
    //     status: ForgotPasswordStatus.error,
    //     errorMessage: 'Please enter a valid password',
    //   ));

    //   return;
    // }

    // if (state.newPassword != state.confirmPassword) {
    //   emit(state.copyWith(
    //     errorMessage: 'Please enter a valid password',
    //     status: ForgotPasswordStatus.error,
    //   ));

    //   return;
    // }

    emit(state.copyWith(
      status: ForgotPasswordStatus.loading,
    ));

    await Future.delayed(const Duration(milliseconds: 2000));

    emit(state.copyWith(
      status: ForgotPasswordStatus.success,
    ));
  }
}
