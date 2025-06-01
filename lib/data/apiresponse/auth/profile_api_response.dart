import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileApiResponse {
  final int? id;
  final String? email;
  final String? password;
  final String? name;
  final String? role;
  final String? avatar;
  final String? creationAt;
  final String? updatedAt;

  ProfileApiResponse({
    this.id,
    this.email,
    this.password,
    this.name,
    this.role,
    this.avatar,
    this.creationAt,
    this.updatedAt,
  });

  factory ProfileApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileApiResponseToJson(this);
}
