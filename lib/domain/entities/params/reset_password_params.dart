import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_params.g.dart';

@JsonSerializable(explicitToJson: true)
class ResetPasswordParams {
  final String email;
  final String newPassword;
  final String appSecret;

  const ResetPasswordParams({
    required this.email,
    required this.newPassword,
    required this.appSecret,
  });

  Map<String, dynamic> toJson() => _$ResetPasswordParamsToJson(this);
}