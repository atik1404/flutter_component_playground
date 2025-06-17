// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movie_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingMovieApiResponse _$UpcomingMovieApiResponseFromJson(
        Map<String, dynamic> json) =>
    UpcomingMovieApiResponse(
      (json['results'] as List<dynamic>)
          .map((e) => MovieResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpcomingMovieApiResponseToJson(
        UpcomingMovieApiResponse instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) =>
    MovieResponse(
      adult: json['adult'] as bool?,
      backdropPath: json['backdropPath'] as String?,
    );

Map<String, dynamic> _$MovieResponseToJson(MovieResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
    };
