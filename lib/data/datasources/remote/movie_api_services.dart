import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/network/network_exception.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/apiresponse/home/upcoming_movie_api_response.dart';

class MovieApiServices {
  final Dio dio;

  MovieApiServices({required this.dio});

  Future<Result<UpcomingMovieApiResponse>> fetchUpcomingMovies() async {
    try {
      final response = await dio.get("3/movie/upcoming");

      return SuccessResult(UpcomingMovieApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    }
  }
}