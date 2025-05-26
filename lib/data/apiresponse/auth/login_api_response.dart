import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginApiResponse {
  final String? access_token;
  final String? refresh_token;

  const LoginApiResponse({
    this.access_token,
    this.refresh_token,
  });

  factory LoginApiResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginApiResponseToJson(this);
}
