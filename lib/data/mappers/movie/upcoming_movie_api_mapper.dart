import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/movie/upcoming_movie_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_api_entity.dart';

class UpcomingMovieApiMapper
    extends BaseMapper<UpcomingMovieApiResponse, List<MovieApiEntity>> {
  @override
  List<MovieApiEntity> map(UpcomingMovieApiResponse response) {
    return response.results
            ?.map((movie) => MovieApiEntity(
                  backdropPath: movie.backdrop_path ?? "",
                  movieId: movie.id ?? -1,
                  originalLanguage: movie.original_language ?? "",
                  originalTitle: movie.original_title ?? "",
                  overview: movie.overview ?? "",
                  popularity: movie.popularity ?? 0.0,
                  posterPath: movie.poster_path ?? "",
                  releaseDate: movie.release_date ?? "",
                  title: movie.title ?? "",
                  video: movie.video ?? false,
                  voteAverage: movie.vote_average ?? 0.0,
                  voteCount: movie.vote_count ?? 0,
                  genreIds: movie.genre_ids ?? [],
                ))
            .toList() ??
        [];
  }
}
