import 'package:flutter_component_playground/common/extensions/mathmatics_extension.dart';
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
      rating: (response.vote_average ?? 0.0).roundToTwoDecimalPlaces,
      voteCount: response.vote_count ?? 0,
      releaseDate: response.release_date ?? "",
      originalLanguage: response.original_language ?? "",
      status: response.status ?? "",
      languages: response.spoken_languages
              ?.map((lang) => lang.englishName ?? "")
              .toList() ??
          [],
      genres: response.genres?.map((genre) => genre.name ?? "").toList() ?? [],
      duration: response.runtime ?? 0,
    );
  }
}
