import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/home/upcoming_movie_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';

class UpcomingMovieApiMapper
    extends BaseMapper<UpcomingMovieApiResponse, List<MovieApiEntity>> {
  @override
  List<MovieApiEntity> map(UpcomingMovieApiResponse response) {
    return response.results
        .map((movie) => MovieApiEntity(
              backdropPath: movie.backdropPath ?? "",
              movieId: movie.id ?? -1,
              originalLanguage: movie.originalLanguage ?? "",
              originalTitle: movie.originalTitle ?? "",
              overview: movie.overview ?? "",
              popularity: movie.popularity ?? 0.0,
              posterPath: movie.posterPath ?? "",
              releaseDate: movie.releaseDate ?? "",
              title: movie.title ?? "",
              video: movie.video ?? false,
              voteAverage: movie.voteAverage ?? 0.0,
              voteCount: movie.voteCount ?? 0,
              genreIds: movie.genreIds ?? [],
            ))
        .toList();
  }
}
