import 'package:freezed_annotation/freezed_annotation.dart';
part 'send_otp_params.g.dart';

@JsonSerializable(explicitToJson: true)
class SendOtpParams {
  final String email;
  final String appSecret;

  const SendOtpParams({
    required this.email,
    required this.appSecret,
  });

  Map<String, dynamic> toJson() => _$SendOtpParamsToJson(this);
}