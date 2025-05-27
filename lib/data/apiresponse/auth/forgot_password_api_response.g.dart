// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordApiResponse _$ForgotPasswordApiResponseFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordApiResponse(
      message: json['message'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordApiResponseToJson(
        ForgotPasswordApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
    };
