import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_details_api_entity.dart';

final class MovieDetailsState {
  final MovieDetailsApiEntity? movieDetails;
  final List<MovieApiEntity> popularMovies;
  final bool isLoading;
  final String? errorMessage;

  const MovieDetailsState({
    this.movieDetails,
    this.isLoading = false,
    this.errorMessage,
    this.popularMovies = const [],
  });

  MovieDetailsState copyWith({
    MovieDetailsApiEntity? movieDetails,
    List<MovieApiEntity>? popularMovies,
    bool? isLoading,
    String? errorMessage,
  }) {
    return MovieDetailsState(
      popularMovies: popularMovies ?? this.popularMovies,
      movieDetails: movieDetails ?? this.movieDetails,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
