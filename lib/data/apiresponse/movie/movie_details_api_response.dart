import 'package:json_annotation/json_annotation.dart';

part 'movie_details_api_response.g.dart';

@JsonSerializable()
class MovieDetailsApiResponse {
  final bool? adult;
  final String? backdrop_path;
  final int? budget;
  final List<Genre>? genres;
  final String? homepage;
  final int? id;
  final String? imdb_id;
  final List<String>? origin_country;
  final String? original_language;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompany>? production_companies;
  final List<ProductionCountry>? production_countries;
  final String? release_date;
  final int? revenue;
  final int? runtime;
  final List<SpokenLanguage>? spoken_languages;
  final String? status;
  final String? tagline;
  final String? title;
  final bool? video;
  final double? vote_average;
  final int? vote_count;

  MovieDetailsApiResponse({
    this.adult,
    this.backdrop_path,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdb_id,
    this.origin_country,
    this.original_language,
    this.overview,
    this.popularity,
    this.posterPath,
    this.production_companies,
    this.production_countries,
    this.release_date,
    this.revenue,
    this.runtime,
    this.spoken_languages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.vote_average,
    this.vote_count,
  });

  factory MovieDetailsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsApiResponseFromJson(json);
}

@JsonSerializable()
class Genre {
  final int? id;
  final String? name;

  Genre({this.id, this.name});

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@JsonSerializable()
class ProductionCompany {
  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  ProductionCompany({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyFromJson(json);
}

@JsonSerializable()
class ProductionCountry {
  final String? iso31661;
  final String? name;

  ProductionCountry({
    this.iso31661,
    this.name,
  });

  factory ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryFromJson(json);
}

@JsonSerializable()
class SpokenLanguage {
  final String? englishName;
  final String? iso6391;
  final String? name;

  SpokenLanguage({
    this.englishName,
    this.iso6391,
    this.name,
  });

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageFromJson(json);
}
