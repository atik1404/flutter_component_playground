import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/registration_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/registration_entity.dart';

class RegistrationApiMapper
    extends BaseMapper<RegistrationApiResponse, RegistrationEntity> {
  @override
  RegistrationEntity map(RegistrationApiResponse response) {
    return RegistrationEntity(
      userId: response.id ?? 0,
      name: response.name ?? "",
      email: response.email ?? "",
      avatar: response.avatar ?? "",
      role: response.role ?? "",
    );
  }
}
