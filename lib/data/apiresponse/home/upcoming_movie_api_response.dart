import 'package:json_annotation/json_annotation.dart';
part 'upcoming_movie_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpcomingMovieApiResponse {
  List<MovieResponse> results;

  UpcomingMovieApiResponse(this.results);

  factory UpcomingMovieApiResponse.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMovieApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingMovieApiResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieResponse {
  bool? adult;
  String? backdropPath;
  // List<int>? genreIds;
  // int? id;
  // String? originalLanguage;
  // String? originalTitle;
  // String? overview;
  // double? popularity;
  // String? posterPath;
  // String? releaseDate;
  // String? title;
  // bool? video;
  // double? voteAverage;
  // int? voteCount;

  MovieResponse({
    this.adult,
    this.backdropPath,
    // this.genreIds,
    // this.id,
    // this.originalLanguage,
    // this.originalTitle,
    // this.overview,
    // this.popularity,
    // this.posterPath,
    // this.releaseDate,
    // this.title,
    // this.video,
    // this.voteAverage,
    // this.voteCount,
  });

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}
