// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpParams _$VerifyOtpParamsFromJson(Map<String, dynamic> json) =>
    VerifyOtpParams(
      otp: json['otp'] as String,
      email: json['email'] as String,
      appSecret: json['appSecret'] as String,
    );

Map<String, dynamic> _$VerifyOtpParamsToJson(VerifyOtpParams instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'email': instance.email,
      'appSecret': instance.appSecret,
    };
