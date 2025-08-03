import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_details_api_entity.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

final class FetchMovieDetailsApiUsecase
    implements ApiUseCase<int, MovieDetailsApiEntity> {
  final MovieRepository _repository;

  const FetchMovieDetailsApiUsecase(this._repository);

  @override
  Future<Result<MovieDetailsApiEntity>> invoke(int params) async {
    final result = await _repository.fetchMovieDetails(params);

    return result;
  }
}
