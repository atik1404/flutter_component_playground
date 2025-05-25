import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final class NetworkClient {
  final Dio dio;

  factory NetworkClient({required String baseUrl}) {
    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 20),
      contentType: 'application/json',
    ));

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
