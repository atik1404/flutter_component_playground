import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyOtpApiResponse {
  final String? message;
  final String? appSecret;

  VerifyOtpApiResponse({
    this.message,
    this.appSecret,
  });
  factory VerifyOtpApiResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpApiResponseFromJson(json);
}
