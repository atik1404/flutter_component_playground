import 'package:flutter_component_playground/core/base/response_transformer.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:flutter_component_playground/data/datasources/remote/auth_api_services.dart';
import 'package:flutter_component_playground/data/mappers/auth/forgot_password_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/login_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/profile_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/verify_otp_api_mapper.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/login_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/profile_api_entity.dart';
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
  final ProfileApiMapper _profileApiMapper;
  final ForgotPasswordApiMapper _forgotPasswordApiMapper;
  final VerifyOtpApiMapper _verifyOtpApiMapper;
  final SharedPrefs _sharedPrefs;

  AuthRepoImpl({
    required AuthApiServices authApiServices,
    required LoginApiMapper loginApiMapper,
    required ProfileApiMapper registrationApiMapper,
    required ForgotPasswordApiMapper forgotPasswordApiMapper,
    required VerifyOtpApiMapper verifyOtpApiMapper,
    required SharedPrefs sharedPrefs,
  })  : _authApiServices = authApiServices,
        _loginApiMapper = loginApiMapper,
        _profileApiMapper = registrationApiMapper,
        _forgotPasswordApiMapper = forgotPasswordApiMapper,
        _verifyOtpApiMapper = verifyOtpApiMapper,
        _sharedPrefs = sharedPrefs;

  @override
  Future<Result<LoginEntity>> userLogin(LoginParams params) async {
    final response = await _authApiServices.userLogin(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _loginApiMapper);
  }

  @override
  Future<Result<ProfileApiEntity>> fetchProfile() async {
    final response = await _authApiServices.fetchProfile();
    final result = ResponseTransformer()
        .transform(response: response, mapper: _profileApiMapper);

    if (result is SuccessResult<ProfileApiEntity>) {
      // Save user profile data to shared preferences
      final profile = result.data;
      _sharedPrefs..set(key: SharedPrefKey.userId, value: profile.userId)
      ..set(key: SharedPrefKey.userEmail, value: profile.email)
      ..set(key: SharedPrefKey.userRole, value: profile.role)
      ..set(key: SharedPrefKey.avatar, value: profile.avatar)
      ..set(key: SharedPrefKey.fullName, value: profile.name);
    }

    return result;
  }

  @override
  Future<Result<ProfileApiEntity>> userRegistration(
    RegistrationParams params,
  ) async {
    final response = await _authApiServices.userRegistration(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _profileApiMapper);
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
