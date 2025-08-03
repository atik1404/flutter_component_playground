import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_categories_api_entity.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

class FetchMovieCategoriesApiUsecase
    implements NoParamApiUseCase<List<MovieCategoriesApiEntity>> {
  final MovieRepository _repository;

  const FetchMovieCategoriesApiUsecase(this._repository);

  @override
  Future<Result<List<MovieCategoriesApiEntity>>> invoke() async {
    final result = await _repository.fetchMovieCategories();

    return result;
  }
}
