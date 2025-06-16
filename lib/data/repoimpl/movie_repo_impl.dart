import 'package:flutter_component_playground/core/base/response_transformer.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/datasources/remote/movie_api_services.dart';
import 'package:flutter_component_playground/data/mappers/home/upcoming_movie_api_mapper.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

final class MovieRepoImpl extends MovieRepository {
  final MovieApiServices _apiServices;
  final UpcomingMovieApiMapper _upcomingMovieApiMapper;

  MovieRepoImpl({
    required MovieApiServices apiServices,
    required UpcomingMovieApiMapper upcomingMovieApiMapper,
  }) : _upcomingMovieApiMapper = upcomingMovieApiMapper,
       _apiServices = apiServices;

  @override
  Future<Result<List<MovieApiEntity>>> fetchUpcomingMovies() async {
    final response = await _apiServices.fetchUpcomingMovies();

    return ResponseTransformer()
        .transform(response: response, mapper: _upcomingMovieApiMapper);
  }
}
