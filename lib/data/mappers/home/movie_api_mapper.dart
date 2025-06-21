import 'package:flutter_component_playground/common/extensions/mathmatics_extension.dart';
import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/home/movies_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:jiffy/jiffy.dart';

class MovieApiMapper
    extends BaseMapper<MoviesApiResponse, List<MovieApiEntity>> {
  @override
  List<MovieApiEntity> map(MoviesApiResponse response) {
    return response.results
            ?.map((movie) => MovieApiEntity(
                  backdropPath: movie.backdrop_path ?? "",
                  movieId: movie.id ?? -1,
                  originalLanguage: movie.original_language ?? "",
                  originalTitle: movie.original_title ?? "",
                  overview: movie.overview ?? "",
                  popularity: movie.popularity ?? 0.0,
                  posterPath: movie.poster_path ?? "",
                  releaseDate: (movie.release_date == null ||
                          movie.release_date!.isEmpty)
                      ? Jiffy.now().yMMMd
                      : movie.release_date!,
                  title: movie.title ?? "",
                  video: movie.video ?? false,
                  voteAverage:
                      (movie.vote_average ?? 0.0).roundToTwoDecimalPlaces,
                  voteCount: movie.vote_count ?? 0,
                  genreIds: movie.genre_ids ?? [],
                ))
            .toList() ??
        [];
  }
}
