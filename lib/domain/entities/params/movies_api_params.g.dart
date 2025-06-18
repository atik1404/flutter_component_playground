// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_api_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesApiParams _$MoviesApiParamsFromJson(Map<String, dynamic> json) =>
    MoviesApiParams(
      page: (json['page'] as num).toInt(),
      categoryId: (json['with_genres'] as num).toInt(),
    );

Map<String, dynamic> _$MoviesApiParamsToJson(MoviesApiParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'with_genres': instance.categoryId,
    };
