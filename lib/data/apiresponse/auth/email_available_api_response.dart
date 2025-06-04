import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_available_api_response.g.dart';

@JsonSerializable(explicitToJson: true)
class EmailAvailableApiResponse {
  final bool? isAvailable;
  final String? error;
  final int? statusCode;
  final List<String>? message;

  EmailAvailableApiResponse({
    this.error,
    this.statusCode,
    this.message,
    this.isAvailable,
  });

  factory EmailAvailableApiResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailAvailableApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EmailAvailableApiResponseToJson(this);
}
