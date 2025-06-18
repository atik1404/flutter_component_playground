import 'package:json_annotation/json_annotation.dart';
part 'upcoming_movie_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpcomingMovieApiResponse {
  List<MovieResponse>? results;

  UpcomingMovieApiResponse(this.results);

  factory UpcomingMovieApiResponse.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMovieApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingMovieApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieResponse {
  bool? adult;
  String? backdrop_path;
  List<int>? genre_ids;
  int? id;
  String? original_language;
  String? original_title;
  String? overview;
  double? popularity;
  String? poster_path;
  String? release_date;
  String? title;
  bool? video;
  double? vote_average;
  int? vote_count;

  MovieResponse({
    this.adult,
    this.backdrop_path,
    this.genre_ids,
    this.id,
    this.original_language,
    this.original_title,
    this.overview,
    this.popularity,
    this.poster_path,
    this.release_date,
    this.title,
    this.video,
    this.vote_average,
    this.vote_count,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}
