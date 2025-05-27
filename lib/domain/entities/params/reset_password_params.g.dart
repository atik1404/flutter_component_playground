// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordParams _$ResetPasswordParamsFromJson(Map<String, dynamic> json) =>
    ResetPasswordParams(
      email: json['email'] as String,
      newPassword: json['newPassword'] as String,
      appSecret: json['appSecret'] as String,
    );

Map<String, dynamic> _$ResetPasswordParamsToJson(
        ResetPasswordParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
      'appSecret': instance.appSecret,
    };
