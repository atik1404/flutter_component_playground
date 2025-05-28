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
    on<OnPageChanged>(_onPageChanged);
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
    ));
  }

  void _onOtpChanged(
    OtpChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      otp: event.otp,
    ));
  }

  void _onPasswordChanged(
    NewPasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      newPassword: PasswordValidator.dirty(event.password),
    ));
  }

  void _onConfirmPasswordChanged(
    ConfirmPasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      confirmPassword: PasswordValidator.dirty(event.confirmPassword),
    ));
  }

  void _onPageChanged(
    OnPageChanged event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    await Future.delayed(const Duration(milliseconds: 100));

    emit(state.copyWith(
      currentPageIndex: event.index,
      currentPage: ForgotPasswordPage.values[event.index],
    ));
  }

  void _sendOtp(
    SendOtp event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ForgotPasswordStatus.loading,));
    
    await Future.delayed(const Duration(milliseconds: 100));

    emit(state.copyWith(
      currentPage: ForgotPasswordPage.otpForm,
      currentPageIndex: 1,
    ));
  }

  void _verifyOtp(
    VerifyOtp event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ForgotPasswordStatus.loading,));

    await Future.delayed(const Duration(milliseconds: 100));

    emit(state.copyWith(
      currentPage: ForgotPasswordPage.passwordForm,
      currentPageIndex: 2,
    ));
  }

  void _resetPassword(
    ResetPassword event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ForgotPasswordStatus.loading,));

    await Future.delayed(const Duration(milliseconds: 100));

    emit(state.copyWith(status: ForgotPasswordStatus.success,));
  }
}
