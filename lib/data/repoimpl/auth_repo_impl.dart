import 'package:flutter_component_playground/core/base/response_transformer.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/datasources/remote/auth_api_services.dart';
import 'package:flutter_component_playground/data/mappers/auth/forgot_password_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/login_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/registration_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/verify_otp_api_mapper.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/login_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/registration_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/verify_otp_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/registration_params.dart';
import 'package:flutter_component_playground/domain/entities/params/login_params.dart';
import 'package:flutter_component_playground/domain/entities/params/reset_password_params.dart';
import 'package:flutter_component_playground/domain/entities/params/send_otp_params.dart';
import 'package:flutter_component_playground/domain/entities/params/verify_otp_params.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

final class AuthRepoImpl extends AuthRepository {
  final AuthApiServices _authApiServices;
  final LoginApiMapper _loginApiMapper;
  final RegistrationApiMapper _registrationApiMapper;
  final ForgotPasswordApiMapper _forgotPasswordApiMapper;
  final VerifyOtpApiMapper _verifyOtpApiMapper;

  AuthRepoImpl({
    required AuthApiServices authApiServices,
    required LoginApiMapper loginApiMapper,
    required RegistrationApiMapper registrationApiMapper,
    required ForgotPasswordApiMapper forgotPasswordApiMapper,
    required VerifyOtpApiMapper verifyOtpApiMapper,
  })  : _authApiServices = authApiServices,
        _loginApiMapper = loginApiMapper,
        _registrationApiMapper = registrationApiMapper,
        _forgotPasswordApiMapper = forgotPasswordApiMapper,
        _verifyOtpApiMapper = verifyOtpApiMapper;

  @override
  Future<Result<LoginEntity>> userLogin(LoginParams params) async {
    final response = await _authApiServices.userLogin(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _loginApiMapper);
  }

  @override
  Future<Result<RegistrationEntity>> userRegistration(
    RegistrationParams params,
  ) async {
    final response = await _authApiServices.userRegistration(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _registrationApiMapper);
  }

  @override
  Future<Result<String>> resetPassword(ResetPasswordParams params) async {
    final response = await _authApiServices.resetPassword(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _forgotPasswordApiMapper);
  }

  @override
  Future<Result<String>> sendtOtp(SendOtpParams params) async {
    final response = await _authApiServices.sendOtp(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _forgotPasswordApiMapper);
  }

  @override
  Future<Result<VerifyOtpApiEntity>> verifyOtp(VerifyOtpParams params) async {
    final response = await _authApiServices.verifyOtp(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _verifyOtpApiMapper);
  }
}
