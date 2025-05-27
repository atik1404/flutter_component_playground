import 'package:flutter_component_playground/core/config/app_core_env.dart';
import 'package:flutter_component_playground/core/config/env/app_env_fields.dart';
import 'package:envied/envied.dart';

part 'app_dev_env.g.dart';

@Envied(name: 'DevelopmentEnv', path: '.env_dev')
final class AppDevEnv implements AppCoreEnv, AppEnvFields {
  AppDevEnv();

  @override
  @EnviedField(varName: 'APP_BASE_URL', obfuscate: true)
  final String appBaseUrl = _DevelopmentEnv.appBaseUrl;

  @override
  @EnviedField(varName: 'AUTH_BASE_URL', obfuscate: true)
  final String authBaseUrl = _DevelopmentEnv.authBaseUrl;

  @override
  @EnviedField(varName: 'IMAGE_BASE_URL', obfuscate: true)
  final String imageBaseUrl = _DevelopmentEnv.imageBaseUrl;
}
