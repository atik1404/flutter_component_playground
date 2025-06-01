import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/data/mappers/auth/forgot_password_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/login_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/profile_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/verify_otp_api_mapper.dart';

Future<void> registerMapperModule() async {
  di
    ..registerFactory(LoginApiMapper.new)
    ..registerFactory(ProfileApiMapper.new)
    ..registerFactory(ForgotPasswordApiMapper.new)
    ..registerFactory(VerifyOtpApiMapper.new);

  return;
}
