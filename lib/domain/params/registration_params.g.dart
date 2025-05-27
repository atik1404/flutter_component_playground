// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationParams _$RegistrationParamsFromJson(Map<String, dynamic> json) =>
    RegistrationParams(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      role: json['role'] as String? ?? "user",
      avatar: json['avatar'] as String? ??
          "https://parade.com/.image/t_share/MTkwNTc4NzcwMDEwOTczMzA5/tom-cruise-net-worth.jpg",
    );

Map<String, dynamic> _$RegistrationParamsToJson(RegistrationParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'role': instance.role,
      'avatar': instance.avatar,
    };
