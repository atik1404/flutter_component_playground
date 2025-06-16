import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

class FetchUpcomingMoviesApiUsecase
    implements NoParamApiUseCase<List<MovieApiEntity>> {
  final MovieRepository _repository;

  const FetchUpcomingMoviesApiUsecase(this._repository);

  @override
  Future<Result<List<MovieApiEntity>>> invoke() async {
    final result = await _repository.fetchUpcomingMovies();

    return result;
  }
}
