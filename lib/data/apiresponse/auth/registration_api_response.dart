import 'package:freezed_annotation/freezed_annotation.dart';
part 'registration_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class RegistrationApiResponse {
  final String? message;

  const RegistrationApiResponse({
    this.message,
  });

  factory RegistrationApiResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationApiResponseToJson(this);
}
