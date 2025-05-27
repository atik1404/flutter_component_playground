import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_reset_password_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_send_otp_api_usecase.dart';
import 'package:flutter_component_playground/domain/usecase/auth/post_verify_otp_api_usecase.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_event.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_state.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {

  final PostSendOtpApiUsecase _sendOtpApiUsecase;
  final PostVerifyOtpApiUsecase _verifyOtpApiUsecase;
  final PostResetPasswordApiUsecase _resetPasswordApiUsecase;

  ForgotPasswordBloc({
    required PostSendOtpApiUsecase postSendOtpApiUsecase,
    required PostVerifyOtpApiUsecase postVerifyOtpApiUsecase,
    required PostResetPasswordApiUsecase postResetPasswordApiUsecase,
  }) : _sendOtpApiUsecase = postSendOtpApiUsecase,
       _verifyOtpApiUsecase = postVerifyOtpApiUsecase,
       _resetPasswordApiUsecase = postResetPasswordApiUsecase,
  super(ForgotPasswordState()){
    
  }


}