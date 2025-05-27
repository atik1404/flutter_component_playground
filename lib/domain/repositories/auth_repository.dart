import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/login_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/registration_entity.dart';
import 'package:flutter_component_playground/domain/entities/apientity/auth/verify_otp_api_entity.dart';
import 'package:flutter_component_playground/domain/entities/params/registration_params.dart';
import 'package:flutter_component_playground/domain/entities/params/login_params.dart';
import 'package:flutter_component_playground/domain/entities/params/reset_password_params.dart';
import 'package:flutter_component_playground/domain/entities/params/send_otp_params.dart';
import 'package:flutter_component_playground/domain/entities/params/verify_otp_params.dart';

abstract class AuthRepository {
  Future<Result<LoginEntity>> userLogin(LoginParams params);
  Future<Result<RegistrationEntity>> userRegistration(
    RegistrationParams params,
  );

  Future<Result<String>> sendtOtp(
    SendOtpParams params,
  );

  Future<Result<VerifyOtpApiEntity>> verifyOtp(
    VerifyOtpParams params,
  );

  Future<Result<String>> resetPassword(
    ResetPasswordParams params,
  );
}
