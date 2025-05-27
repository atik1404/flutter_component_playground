import 'package:freezed_annotation/freezed_annotation.dart';
part 'registration_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class RegistrationApiResponse {
  final int? id;
  final String? email;
  final String? password;
  final String? name;
  final String? role;
  final String? avatar;
  final String? creationAt;
  final String? updatedAt;

  RegistrationApiResponse({
    this.id,
    this.email,
    this.password,
    this.name,
    this.role,
    this.avatar,
    this.creationAt,
    this.updatedAt,
  });

  factory RegistrationApiResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationApiResponseToJson(this);
}
