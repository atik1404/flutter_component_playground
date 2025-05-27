import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/network/network_exception.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/login_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/registration_api_response.dart';
import 'package:flutter_component_playground/domain/params/registration_params.dart';
import 'package:flutter_component_playground/domain/params/login_params.dart';

class AuthApiServices {
  final Dio dio;

  AuthApiServices({required this.dio});

  Future<Result<LoginApiResponse>> userLogin(LoginParams params) async {
    try {
      final response = await dio.post("v1/auth/login", data: params.toJson());

      return SuccessResult(LoginApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }

  Future<Result<RegistrationApiResponse>> userRegistration(
    RegistrationParams params,
  ) async {
    try {
      final response = await dio.post("v1/users", data: params.toJson());

      return SuccessResult(RegistrationApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }
}
