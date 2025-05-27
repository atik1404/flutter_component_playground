import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/registration_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/registration_params.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

class PostRegistrationUsecase
    implements ApiUseCase<RegistrationParams, RegistrationEntity> {
  final AuthRepository _repository;

  const PostRegistrationUsecase(this._repository);

  @override
  Future<Result<RegistrationEntity>> invoke(RegistrationParams params) async {
    final result = await _repository.userRegistration(params);

    return result;
  }
}
