import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/movie/movie_details_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_details_api_entity.dart';

class MovieDetailsApiMapper
    extends BaseMapper<MovieDetailsApiResponse, MovieDetailsApiEntity> {
  @override
  MovieDetailsApiEntity map(MovieDetailsApiResponse response) {
    return MovieDetailsApiEntity(
      movieId: response.id ?? -1,
      movieTitle: response.title ?? "",
      movieDescription: response.overview ?? "",
      posterPath: response.posterPath ?? "",
      rating: response.voteAverage ?? 0.0,
      voteCount: response.voteCount ?? 0,
      releaseDate: response.releaseDate ?? "",
      originalLanguage: response.originalLanguage ?? "",
      status: response.status ?? "",
      languages: response.spokenLanguages
              ?.map((lang) => lang.englishName ?? "")
              .toList() ??
          [],
      genres: response.genres?.map((genre) => genre.name ?? "").toList() ?? [],
      duration: response.runtime ?? 0,
    );
  }
}
