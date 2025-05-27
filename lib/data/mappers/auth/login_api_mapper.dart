import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/login_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/login_entity.dart';

class LoginApiMapper extends BaseMapper<LoginApiResponse, LoginEntity> {
  @override
  LoginEntity map(LoginApiResponse response) {
    return LoginEntity(
      accessToken: response.access_token ?? "",
      refreshToken: response.refresh_token ?? "",
    );
  }
}
