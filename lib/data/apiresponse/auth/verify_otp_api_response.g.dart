// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpApiResponse _$VerifyOtpApiResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpApiResponse(
      message: json['message'] as String?,
      appSecret: json['appSecret'] as String?,
    );

Map<String, dynamic> _$VerifyOtpApiResponseToJson(
        VerifyOtpApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'appSecret': instance.appSecret,
    };
