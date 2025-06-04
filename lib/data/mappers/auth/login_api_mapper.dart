import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/login_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/login_api_entity.dart';

class LoginApiMapper extends BaseMapper<LoginApiResponse, LoginApiEntity> {
  @override
  LoginApiEntity map(LoginApiResponse response) {
    return LoginApiEntity(
      accessToken: response.access_token ?? "",
      refreshToken: response.refresh_token ?? "",
    );
  }
}
