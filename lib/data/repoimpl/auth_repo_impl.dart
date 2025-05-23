import 'package:flutter_component_playground/core/base/response_transformer.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/datasources/remote/auth_api_services.dart';
import 'package:flutter_component_playground/data/mappers/auth/login_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/auth/registration_api_mapper.dart';
import 'package:flutter_component_playground/domain/entities/apientity/login_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/registration_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/registration_params.dart';
import 'package:flutter_component_playground/domain/params/login_params.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

final class AuthRepoImpl extends AuthRepository {
  final AuthApiServices _authApiServices;
  final LoginApiMapper _loginApiMapper;
  final RegistrationApiMapper _registrationApiMapper;

  AuthRepoImpl({
    required AuthApiServices authApiServices,
    required LoginApiMapper loginApiMapper,
    required RegistrationApiMapper registrationApiMapper,
  })  : _authApiServices = authApiServices,
        _loginApiMapper = loginApiMapper,
        _registrationApiMapper = registrationApiMapper;

  @override
  Future<Result<LoginEntity>> userLogin(LoginParams params) async {
    final response = await _authApiServices.userLogin(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _loginApiMapper);
  }

  @override
  Future<Result<RegistrationEntity>> userRegistration(RegistrationParams params) async{
    final response = await _authApiServices.userRegistration(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _registrationApiMapper);
  }
}
