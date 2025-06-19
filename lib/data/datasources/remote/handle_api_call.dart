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
    String? errorMessage;
    if (e.response?.data != null) {
      try {
        // If the error body is a Map, try to extract a message field
        final data = e.response!.data;
        if (data is Map && data['message'] != null) {
          errorMessage = data['message'].toString();
        } else if (data is String) {
          errorMessage = data;
        }
      } catch (_) {
        // Ignore parsing errors, fallback to Dio's message
      }
    }

    return FailureResult<T>(
      NetworkException(
        description: errorMessage ?? e.message ?? 'Unknown Dio error',
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
