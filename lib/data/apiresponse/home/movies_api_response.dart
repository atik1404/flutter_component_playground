import 'package:flutter_component_playground/data/apiresponse/home/upcoming_movie_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MoviesApiResponse {
  final List<MovieResponse>? results;
  final int? page;

  MoviesApiResponse({
    required this.results,
    this.page,
  });

  factory MoviesApiResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesApiResponseToJson(this);
}
