import 'dart:async';

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
  Timer? _timer;
  int _secondsRemaining = 0;

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
    on<ResendOtp>(_resendOtp);
    on<VerifyOtp>(_verifyOtp);
    on<ResetPassword>(_resetPassword);
  }

  @override
  Future<void> close() {
    _timer?.cancel();

    return super.close();
  }

  void _startTimer({int duration = 60}) {
    _secondsRemaining = duration;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        _secondsRemaining--;
        emit(state.copyWith(
          remainTime: '00:${_secondsRemaining.toString().padLeft(2, '0')}',
          isTimerRunning: true,
        ));
      } else {
        timer.cancel();
        emit(state.copyWith(
          remainTime: '00:${_secondsRemaining.toString().padLeft(2, '0')}',
          isTimerRunning: false,
        ));
      }
    });
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
    // if (state.email.isNotValid) {
    //   emit(state.copyWith(
    //     status: ForgotPasswordStatus.error,
    //   ));

    //   return;
    // }

    emit(state.copyWith(
      status: ForgotPasswordStatus.loading,
    ));

    await Future.delayed(const Duration(milliseconds: 2000));

    emit(state.copyWith(
      currentPage: ForgotPasswordPage.otpForm,
      currentPageIndex: 1,
      status: ForgotPasswordStatus.initial,
    ));
    _startTimer(duration: 10);
  }

  void _resendOtp(
    ResendOtp event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(
      status: ForgotPasswordStatus.progressBar,
    ));

    await Future.delayed(const Duration(milliseconds: 2000));

    emit(state.copyWith(
      isTimerRunning: false,
      status: ForgotPasswordStatus.initial,
    ));
    _startTimer(duration: 10);
  }

  void _verifyOtp(
    VerifyOtp event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    if (state.otp.length != 4) {
      emit(state.copyWith(
        status: ForgotPasswordStatus.error,
      ));

      return;
    }

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
    if (state.newPassword.isNotValid || state.confirmPassword.isNotValid) {
      emit(state.copyWith(
        status: ForgotPasswordStatus.error,
      ));

      return;
    }

    if (state.newPassword != state.confirmPassword) {
      emit(state.copyWith(
        status: ForgotPasswordStatus.error,
        isConfirmPasswordError: true,
      ));

      return;
    }

    emit(state.copyWith(
      status: ForgotPasswordStatus.loading,
    ));

    await Future.delayed(const Duration(milliseconds: 2000));

    emit(state.copyWith(
      status: ForgotPasswordStatus.success,
    ));
  }
}
