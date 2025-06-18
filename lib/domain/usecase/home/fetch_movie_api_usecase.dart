import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/movies_api_params.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

class FetchMovieApiUsecase implements ApiUseCase<MoviesApiParams, List<MovieApiEntity>> {
  final MovieRepository _repository;

  const FetchMovieApiUsecase(this._repository);

  @override
  Future<Result<List<MovieApiEntity>>> invoke(MoviesApiParams params) async {
    final result = await _repository.fetchMovies(params);

    return result;
  }
}