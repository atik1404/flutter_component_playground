sealed class MovieDetailsEvent {}

final class FetchMovieDetailsEvent extends MovieDetailsEvent {
  final int movieId;

  FetchMovieDetailsEvent(this.movieId);
}

final class FetchPopularMovieEvent extends MovieDetailsEvent {
  FetchPopularMovieEvent();
}
