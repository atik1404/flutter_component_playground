import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/email_available_api_entity.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

class CheckEmailAvailabilityApiUsecase
    implements ApiUseCase<String, EmailAvailableApiEntity> {
  final AuthRepository _repository;

  const CheckEmailAvailabilityApiUsecase(this._repository);

  @override
  Future<Result<EmailAvailableApiEntity>> invoke(String params) async {
    final result = await _repository.checkEmailAvailability(params);

    return result;
  }
}
