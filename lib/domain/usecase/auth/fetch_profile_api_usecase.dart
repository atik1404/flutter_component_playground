import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/profile_api_entity.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

class FetchProfileApiUsecase implements NoParamApiUseCase<ProfileApiEntity> {
  final AuthRepository _repository;

  const FetchProfileApiUsecase(this._repository);

  @override
  Future<Result<ProfileApiEntity>> invoke() async {
    final result = await _repository.fetchProfile();

    return result;
  }
}
