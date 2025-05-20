import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/network/network_exception.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/login_api_response.dart';
import 'package:flutter_component_playground/domain/params/login_params.dart';

class AuthApiServices {
  final Dio dio;

  AuthApiServices({required this.dio});

  Future<Result<LoginApiResponse>> login(LoginParams params) async {
    try {
      final response = await dio.post("/login", data: params.toJson());
      
      return SuccessResult(LoginApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }
}
