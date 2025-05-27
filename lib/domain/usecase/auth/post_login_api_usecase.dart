import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/login_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/login_params.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

final class PostLoginApiUsecase
    implements ApiUseCase<LoginParams, LoginEntity> {
  final AuthRepository _repository;

  const PostLoginApiUsecase(this._repository);

  @override
  Future<Result<LoginEntity>> invoke(LoginParams params) async {
    final result = await _repository.userLogin(params);

    return result;
  }
}
