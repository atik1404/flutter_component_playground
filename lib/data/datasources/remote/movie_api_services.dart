import 'package:dio/dio.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/network/network_exception.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/data/apiresponse/home/upcoming_movie_api_response.dart';
import 'package:flutter_component_playground/data/datasources/remote/handle_api_call.dart';

class MovieApiServices {
  final Dio dio;

  MovieApiServices({required this.dio});

  Future<Result<UpcomingMovieApiResponse>> fetchUpcomingMovies() async {
    // handleApiCall(
    //   () => dio.get("3/movie/upcoming").then((res) => res.data),
    //   (data) => UpcomingMovieApiResponse.fromJson(data),
    // );

    try {
      final response = await dio.get("3/movie/upcoming");
      appLog.info("response: ${response.data}");

      return SuccessResult(UpcomingMovieApiResponse.fromJson(response.data));
    } on NetworkException catch (e) {
      return FailureResult(e);
    } on DioException catch (e) {
      return FailureResult(NetworkException(
        description: e.message ?? 'Unknown Dio error',
        statusCode: e.response?.statusCode ?? 500,
      ));
    }
  }
}
