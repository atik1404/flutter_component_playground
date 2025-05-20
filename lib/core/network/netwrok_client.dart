import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetwrokClient {
  final Dio dio;

  static final NetwrokClient _instance = NetwrokClient._internal();

  factory NetwrokClient() => _instance;

  NetwrokClient._internal()
      : dio = Dio(BaseOptions(
          baseUrl: 'https://api.example.com',
          connectTimeout: const Duration(seconds: 50),
          receiveTimeout: const Duration(seconds: 30),
        )) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseHeader: true,
        requestBody: true,
      ),
    );
  }
}
