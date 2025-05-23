import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/login_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/registration_entity.dart';

class RegistrationApiMapper
    extends BaseMapper<LoginApiResponse, RegistrationEntity> {
  @override
  RegistrationEntity map(LoginApiResponse response) {
    return RegistrationEntity(
      message: response.message ?? "",
    );
  }
}
