// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginApiResponse _$LoginApiResponseFromJson(Map<String, dynamic> json) =>
    LoginApiResponse(
      access_token: json['access_token'] as String?,
      refresh_token: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$LoginApiResponseToJson(LoginApiResponse instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
