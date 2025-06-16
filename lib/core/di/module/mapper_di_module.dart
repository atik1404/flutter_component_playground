import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/data/mappers/auth/email_available_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/forgot_password_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/login_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/profile_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/verify_otp_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/home/upcoming_movie_api_mapper.dart';

Future<void> registerAuthMapperModule() async {
  di
    ..registerFactory(LoginApiMapper.new)
    ..registerFactory(ProfileApiMapper.new)
    ..registerFactory(ForgotPasswordApiMapper.new)
    ..registerFactory(EmailAvailableApiMapper.new)
    ..registerFactory(VerifyOtpApiMapper.new);

  return;
}

Future<void> registerMovieMapperModule() async {
  di
    .registerFactory(UpcomingMovieApiMapper.new);

  return;
}
