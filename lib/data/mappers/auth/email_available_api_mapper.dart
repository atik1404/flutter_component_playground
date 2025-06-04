import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/email_available_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/email_available_api_entity.dart';

class EmailAvailableApiMapper
    extends BaseMapper<EmailAvailableApiResponse, EmailAvailableApiEntity> {
  @override
  EmailAvailableApiEntity map(EmailAvailableApiResponse response) {
    return EmailAvailableApiEntity(
      isEmailAvailable: response.isAvailable ?? false,
      errorMessage: response.error ?? "",
    );
  }
}
