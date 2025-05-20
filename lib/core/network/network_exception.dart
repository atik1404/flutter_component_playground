final class NetworkException implements Exception{
  final String description;
  final int statusCode;

  const NetworkException({required this.description, required this.statusCode});

  @override
  String toString() {
    return 'Exception: $description, Code: $statusCode';
  }
}