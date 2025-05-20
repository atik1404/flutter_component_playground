// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginApiResponse _$LoginApiResponseFromJson(Map<String, dynamic> json) =>
    LoginApiResponse(
      message: json['message'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$LoginApiResponseToJson(LoginApiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'refreshToken': instance.refreshToken,
    };
