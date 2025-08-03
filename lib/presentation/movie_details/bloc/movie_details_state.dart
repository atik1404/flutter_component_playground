import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_details_api_entity.dart';

final class MovieDetailsState {
  final MovieDetailsApiEntity? movieDetails;
  final bool isLoading;
  final String? errorMessage;

  const MovieDetailsState({
    this.movieDetails,
    this.isLoading = false,
    this.errorMessage,
  });

  MovieDetailsState copyWith({
    MovieDetailsApiEntity? movieDetails,
    bool? isLoading,
    String? errorMessage,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
