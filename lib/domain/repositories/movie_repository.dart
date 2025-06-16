import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';

abstract class MovieRepository {
  Future<Result<List<MovieApiEntity>>> fetchUpcomingMovies();
}
