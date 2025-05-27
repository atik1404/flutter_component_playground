import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_password_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ForgotPasswordApiResponse {
  final String? message;
  final String? error;

  ForgotPasswordApiResponse({this.message, this.error});

  factory ForgotPasswordApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordApiResponseToJson(this);
}
