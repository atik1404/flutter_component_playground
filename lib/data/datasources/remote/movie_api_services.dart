import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/apiresponse/home/movie_categories_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/home/movies_api_response.dart';
import 'package:flutter_component_playground/data/apiresponse/home/upcoming_movie_api_response.dart';
import 'package:flutter_component_playground/data/datasources/remote/handle_api_call.dart';
import 'package:flutter_component_playground/domain/entities/params/movies_api_params.dart';

class MovieApiServices {
  final Dio dio;

  MovieApiServices({required this.dio});

  Future<Result<UpcomingMovieApiResponse>> fetchUpcomingMovies() {
    return handleApiResponse<UpcomingMovieApiResponse>(
      () => dio.get("3/movie/upcoming"),
      (json) => UpcomingMovieApiResponse.fromJson(json),
    );
  }

  Future<Result<MovieCategoriesApiResponse>> fetchMovieCategories() {
    return handleApiResponse<MovieCategoriesApiResponse>(
      () => dio.get("3/genre/movie/list"),
      (json) => MovieCategoriesApiResponse.fromJson(json),
    );
  }

  Future<Result<MoviesApiResponse>> fetchMovies(MoviesApiParams params) {
    return handleApiResponse<MoviesApiResponse>(
      () => dio.get("3/discover/movie", queryParameters: params.toJson()),
      (json) => MoviesApiResponse.fromJson(json),
    );
  }
}
