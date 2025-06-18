import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/email_available_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/forgot_password_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/login_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/profile_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/verify_otp_api_response.dart';
import 'package:flutter_component_playground/data/datasources/remote/handle_api_call.dart';
import 'package:flutter_component_playground/domain/entities/params/registration_params.dart';
import 'package:flutter_component_playground/domain/entities/params/login_params.dart';
import 'package:flutter_component_playground/domain/entities/params/reset_password_params.dart';
import 'package:flutter_component_playground/domain/entities/params/send_otp_params.dart';
import 'package:flutter_component_playground/domain/entities/params/verify_otp_params.dart';

class AuthApiServices {
  final Dio dio;

  AuthApiServices({required this.dio});

  Future<Result<LoginApiResponse>> userLogin(LoginParams params) {
    return handleApiResponse<LoginApiResponse>(
      () => dio.post("v1/auth/login", data: params.toJson()),
      (json) => LoginApiResponse.fromJson(json),
    );
  }

  Future<Result<ProfileApiResponse>> userRegistration(
    RegistrationParams params,
  ) {
    return handleApiResponse<ProfileApiResponse>(
      () => dio.post("v1/users", data: params.toJson()),
      (json) => ProfileApiResponse.fromJson(json),
    );
  }

  Future<Result<ProfileApiResponse>> fetchProfile() {
    return handleApiResponse<ProfileApiResponse>(
      () => dio.get("v1/auth/profile"),
      (json) => ProfileApiResponse.fromJson(json),
    );
  }

  Future<Result<ForgotPasswordApiResponse>> sendOtp(
    SendOtpParams params,
  ) {
    return handleApiResponse<ForgotPasswordApiResponse>(
      () => dio.post("v1/send_otp", data: params.toJson()),
      (json) => ForgotPasswordApiResponse.fromJson(json),
    );
  }

  Future<Result<ForgotPasswordApiResponse>> resetPassword(
    ResetPasswordParams params,
  ) {
    return handleApiResponse<ForgotPasswordApiResponse>(
      () => dio.post("v1/reset_password", data: params.toJson()),
      (json) => ForgotPasswordApiResponse.fromJson(json),
    );
  }

  Future<Result<VerifyOtpApiResponse>> verifyOtp(
    VerifyOtpParams params,
  ) {
    return handleApiResponse<VerifyOtpApiResponse>(
      () => dio.post("v1/verify_otp", data: params.toJson()),
      (json) => VerifyOtpApiResponse.fromJson(json),
    );
  }

  Future<Result<EmailAvailableApiResponse>> checkEmailAvailability(
    String email,
  ) {
    return handleApiResponse<EmailAvailableApiResponse>(
      () => dio.post("v1/users/is-available", data: {"email": email}),
      (json) => EmailAvailableApiResponse.fromJson(json),
    );
  }

  Future<Result<EmailAvailableApiResponse>> refreshToken(String token) {
    return handleApiResponse<EmailAvailableApiResponse>(
      () => dio.post("v1/auth/refresh-token", data: {"email": token}),
      (json) => EmailAvailableApiResponse.fromJson(json),
    );
  }
}
