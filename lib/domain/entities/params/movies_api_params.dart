import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_api_params.g.dart';

@JsonSerializable(explicitToJson: true)
class MoviesApiParams {
  final int page;
  @JsonKey(name: 'with_genres')
  final int categoryId;

  const MoviesApiParams({
    required this.page,
    required this.categoryId,
  });

  Map<String, dynamic> toJson() => _$MoviesApiParamsToJson(this);
}
