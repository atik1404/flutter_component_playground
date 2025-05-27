import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/auth/verify_otp_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/verify_otp_api_entity.dart';

class VerifyOtpApiMapper
    extends BaseMapper<VerifyOtpApiResponse, VerifyOtpApiEntity> {
  @override
  VerifyOtpApiEntity map(VerifyOtpApiResponse response) {
    return VerifyOtpApiEntity(
      message: response.message ?? "",
      appSecret: response.appSecret ?? "",
    );
  }
}
