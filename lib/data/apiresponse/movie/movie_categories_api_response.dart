
import 'package:json_annotation/json_annotation.dart';
part 'movie_categories_api_response.g.dart';

@JsonSerializable()
class MovieCategoriesApiResponse {
  List<MovieCategories>? genres;

  MovieCategoriesApiResponse({this.genres});

  factory MovieCategoriesApiResponse.fromJson(Map<String, dynamic> json) => _$MovieCategoriesApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCategoriesApiResponseToJson(this);
}

@JsonSerializable()
class MovieCategories {
  int? id;
  String? name;

  MovieCategories({this.id, this.name});

  factory MovieCategories.fromJson(Map<String, dynamic> json) => _$MovieCategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCategoriesToJson(this);
}