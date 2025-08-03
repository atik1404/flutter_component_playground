// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_categories_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieCategoriesApiResponse _$MovieCategoriesApiResponseFromJson(
        Map<String, dynamic> json) =>
    MovieCategoriesApiResponse(
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => MovieCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieCategoriesApiResponseToJson(
        MovieCategoriesApiResponse instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };

MovieCategories _$MovieCategoriesFromJson(Map<String, dynamic> json) =>
    MovieCategories(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MovieCategoriesToJson(MovieCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
