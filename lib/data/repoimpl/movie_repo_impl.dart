import 'package:flutter_component_playground/core/base/response_transformer.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/datasources/remote/movie_api_services.dart';
import 'package:flutter_component_playground/data/mappers/movie/movie_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/movie/movie_categories_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/movie/movie_details_api_mapper.dart';
import 'package:flutter_component_playground/data/mappers/movie/upcoming_movie_api_mapper.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_categories_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_details_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/movies_api_params.dart';
import 'package:flutter_component_playground/domain/repositories/movie_repository.dart';

final class MovieRepoImpl extends MovieRepository {
  final MovieApiServices _apiServices;
  final UpcomingMovieApiMapper _upcomingMovieApiMapper;
  final MovieCategoriesApiMapper _movieCategoriesApiMapper;
  final MovieApiMapper _movieApiMapper;
  final MovieDetailsApiMapper _movieDetailsApiMapper;

  MovieRepoImpl({
    required MovieApiServices apiServices,
    required UpcomingMovieApiMapper upcomingMovieApiMapper,
    required MovieCategoriesApiMapper movieCategoriesApiMapper,
    required MovieApiMapper movieApiMapper,
    required MovieDetailsApiMapper movieDetailsApiMapper,
  })  : _upcomingMovieApiMapper = upcomingMovieApiMapper,
        _movieCategoriesApiMapper = movieCategoriesApiMapper,
        _movieApiMapper = movieApiMapper,
        _movieDetailsApiMapper = movieDetailsApiMapper,
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
  Future<Result<List<MovieApiEntity>>> fetchMovies(
      MoviesApiParams params,) async {
    final response = await _apiServices.fetchMovies(params);

    return ResponseTransformer()
        .transform(response: response, mapper: _movieApiMapper);
  }

  @override
  Future<Result<MovieDetailsApiEntity>> fetchMovieDetails(int movieId) async {
    final response = await _apiServices.fetchMovieDetails(movieId);

    return ResponseTransformer()
        .transform(response: response, mapper: _movieDetailsApiMapper);
  }
}
