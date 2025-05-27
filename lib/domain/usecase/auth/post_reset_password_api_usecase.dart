import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/params/reset_password_params.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

class PostResetPasswordApiUsecase implements ApiUseCase<ResetPasswordParams, String> {
  final AuthRepository _repository;

  const PostResetPasswordApiUsecase(this._repository);

  @override
  Future<Result<String>> invoke(ResetPasswordParams params) async {
    final result = await _repository.resetPassword(params);

    return result;
  }
}