import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/verify_otp_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/verify_otp_params.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

class PostVerifyOtpApiUsecase implements ApiUseCase<VerifyOtpParams, VerifyOtpApiEntity> {
  final AuthRepository _repository;

  const PostVerifyOtpApiUsecase(this._repository);

  @override
  Future<Result<VerifyOtpApiEntity>> invoke(VerifyOtpParams params) async {
    final result = await _repository.verifyOtp(params);

    return result;
  }
}
