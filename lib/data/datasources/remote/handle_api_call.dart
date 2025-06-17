import 'package:dio/dio.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/core/network/network_exception.dart';
import 'package:flutter_component_playground/core/network/result.dart';

Future<Result<T>> handleApiCall<T>(
  Future<T> Function() apiCall,
  T Function(dynamic) fromJson,
) async {
  try {
    final response = await apiCall();
    appLog.info("response: ${response}");

    return SuccessResult(fromJson(response));
  } on NetworkException catch (e) {

    appLog.shout("1API call failed: ${e.description}");
    return FailureResult(e);
  } on DioException catch (e) {

    appLog.shout("2API call failed: ${e.toString()}");
    return FailureResult(NetworkException(
      description: e.message ?? 'Unknown Dio error',
      statusCode: e.response?.statusCode ?? 500,
    ));
  } catch (e) {
    appLog.shout("3API call failed: ${e.toString()}");
    return FailureResult(
      NetworkException(description: e.toString(), statusCode: 500),
    );
  }
}
