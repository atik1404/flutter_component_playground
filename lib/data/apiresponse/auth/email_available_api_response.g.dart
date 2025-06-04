// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_available_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailAvailableApiResponse _$EmailAvailableApiResponseFromJson(
        Map<String, dynamic> json) =>
    EmailAvailableApiResponse(
      error: json['error'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message:
          (json['message'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$EmailAvailableApiResponseToJson(
        EmailAvailableApiResponse instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'error': instance.error,
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
