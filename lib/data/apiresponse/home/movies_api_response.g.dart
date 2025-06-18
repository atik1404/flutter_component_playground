// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesApiResponse _$MoviesApiResponseFromJson(Map<String, dynamic> json) =>
    MoviesApiResponse(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MoviesApiResponseToJson(MoviesApiResponse instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'page': instance.page,
    };
