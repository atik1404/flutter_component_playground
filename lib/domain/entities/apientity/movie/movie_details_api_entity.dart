final class MovieDetailsApiEntity {
  final int movieId;
  final String movieTitle;
  final String movieDescription;
  final String posterPath;
  final double rating;
  final int voteCount;
  final String releaseDate;
  final String status;
  final List<String> languages;
  final String originalLanguage;
  final List<String> genres;
  final int duration;

  MovieDetailsApiEntity({
    required this.movieId,
    required this.movieTitle,
    required this.movieDescription,
    required this.posterPath,
    required this.rating,
    required this.voteCount,
    required this.releaseDate,
    required this.status,
    required this.languages,
    required this.originalLanguage,
    required this.genres,
    required this.duration,
  });
}
