import 'package:flutter_component_playground/core/data/sources/result.dart';
import 'package:flutter_component_playground/core/domain/base/base_mapper.dart';

final class ResponseTransformer {
  static final _instance = ResponseTransformer._internal();
  factory ResponseTransformer() => _instance;

  ResponseTransformer._internal();

  Result<Entity> transform<Model, Entity>(
      {required Result<Model> response,
      required BaseMapper<Model, Entity> mapper,}) {
    switch (response) {
      case SuccessResult<Model>():
        return SuccessResult(mapper.map(response.data));

      case FailureResult<Model>():
        return FailureResult(response.exception);
    }
  }
}
