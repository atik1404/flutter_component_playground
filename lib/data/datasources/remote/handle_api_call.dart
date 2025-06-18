import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/network/network_exception.dart';
import 'package:flutter_component_playground/core/network/result.dart';

Future<Result<T>> handleApiResponse<T>(
  Future<Response> Function() request,
  T Function(dynamic json) parseJson,
) async {
  try {
    final response = await request();
    final parsedData = parseJson(response.data);

    return SuccessResult<T>(parsedData);
  } on NetworkException catch (e) {
    return FailureResult<T>(e);
  } on DioException catch (e) {
    return FailureResult<T>(
      NetworkException(
        description: e.message ?? 'Unknown Dio error',
        statusCode: e.response?.statusCode ?? 500,
      ),
    );
  } catch (e) {
    return FailureResult<T>(
      NetworkException(
        description: e.toString(),
        statusCode: 500,
      ),
    );
  }
}
