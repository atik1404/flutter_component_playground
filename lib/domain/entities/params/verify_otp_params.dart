import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_params.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyOtpParams {
  final String otp;
  final String email;
  final String appSecret;

  VerifyOtpParams({
    required this.otp,
    required this.email,
    required this.appSecret,
  });

  Map<String, dynamic> toJson() => _$VerifyOtpParamsToJson(this);
}
