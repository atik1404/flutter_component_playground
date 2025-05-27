
import 'package:flutter_component_playground/core/base/base_use_case.dart';
import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/params/send_otp_params.dart';
import 'package:flutter_component_playground/domain/repositories/auth_repository.dart';

final class PostSendOtpApiUsecase
    implements ApiUseCase<SendOtpParams, String> {
  final AuthRepository _repository;

  const PostSendOtpApiUsecase(this._repository);

  @override
  Future<Result<String>> invoke(SendOtpParams params) async {
    final result = await _repository.sendtOtp(params);

    return result;
  }
}
