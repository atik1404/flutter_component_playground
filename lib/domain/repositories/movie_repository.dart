import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_categories_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/movies_api_params.dart';

abstract class MovieRepository {
  Future<Result<List<MovieApiEntity>>> fetchUpcomingMovies();

  Future<Result<List<MovieApiEntity>>> fetchMovies(MoviesApiParams params);
  
  Future<Result<List<MovieCategoriesApiEntity>>> fetchMovieCategories();
}
