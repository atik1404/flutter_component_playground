import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/forgot_password_api_response.dart';

class ForgotPasswordApiMapper
    extends BaseMapper<ForgotPasswordApiResponse, String> {
  @override
  String map(ForgotPasswordApiResponse response) {
    return response.message ?? "";
  }
}
