import 'package:flutter_component_playground/core/base/response_transformer.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/datasources/remote/movie_api_services.dart';
import 'package:flutter_component_playground/data/mappers/home/movie_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/home/movie_categories_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/home/upcoming_movie_api_mapper.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/home/movie_categories_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/movies_api_params.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

final class MovieRepoImpl extends MovieRepository {
  final MovieApiServices _apiServices;
  final UpcomingMovieApiMapper _upcomingMovieApiMapper;
  final MovieCategoriesApiMapper _movieCategoriesApiMapper;
  final MovieApiMapper _movieApiMapper;

  MovieRepoImpl({
    required MovieApiServices apiServices,
    required UpcomingMovieApiMapper upcomingMovieApiMapper,
    required MovieCategoriesApiMapper movieCategoriesApiMapper,
    required MovieApiMapper movieApiMapper,
  })  : _upcomingMovieApiMapper = upcomingMovieApiMapper,
        _movieCategoriesApiMapper = movieCategoriesApiMapper,
        _movieApiMapper = movieApiMapper,
        _apiServices = apiServices;

  @override
  Future<Result<List<MovieApiEntity>>> fetchUpcomingMovies() async {
    final response = await _apiServices.fetchUpcomingMovies();

    return ResponseTransformer()
        .transform(response: response, mapper: _upcomingMovieApiMapper);
  }

  @override
  Future<Result<List<MovieCategoriesApiEntity>>> fetchMovieCategories() async {
    final response = await _apiServices.fetchMovieCategories();

    return ResponseTransformer()
        .transform(response: response, mapper: _movieCategoriesApiMapper);
  }

  @override
  Future<Result<List<MovieApiEntity>>> fetchMovies(MoviesApiParams params) async{
    final response = await _apiServices.fetchMovies(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _movieApiMapper);
  }
}
