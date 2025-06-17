import 'package:dio/dio.dart';
import 'package:flutter_component_playground/core/config/app_core_env.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final class NetworkClient {
  final Dio dio;

  factory NetworkClient({
    required String baseUrl,
    required SharedPrefs sharedPrefs,
  }) {
    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 20),
      contentType: 'application/json',
    ));

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
              'Bearer ${sharedPrefs.getString(key: SharedPrefKey.accessToken)}';

          options.queryParameters['api_key'] = AppCoreEnv().apiKey;
          
          return handler.next(options);
        },
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    );

    return NetworkClient._internal(dio);
  }

  NetworkClient._internal(this.dio);
}
