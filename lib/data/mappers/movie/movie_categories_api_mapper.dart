import 'package:flutter_component_playground/core/base/base_mapper.dart';
import 'package:flutter_component_playground/data/apiresponse/movie/movie_categories_api_response.dart';
import 'package:flutter_component_playground/domain/entities/apientity/movie/movie_categories_api_entity.dart';

class MovieCategoriesApiMapper extends BaseMapper<MovieCategoriesApiResponse,
    List<MovieCategoriesApiEntity>> {
  @override
  List<MovieCategoriesApiEntity> map(MovieCategoriesApiResponse response) {
    return response.genres?.map((category) {
          return MovieCategoriesApiEntity(
            id: category.id ?? 0,
            name: category.name ?? "",
          );
        }).toList() ??
        [];
  }
}
