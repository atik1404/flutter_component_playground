import 'package:envied/envied.dart';
import 'package:flutter_component_playground/core/config/app_core_env.dart';
import 'package:flutter_component_playground/core/config/env/app_env_fields.dart';
part 'app_stage_env.g.dart';

@Envied(name: 'StageEnv', path: '.env_stage')
final class AppStageEnv implements AppCoreEnv, AppEnvFields {

  AppStageEnv();

  @override
  @EnviedField(varName: 'APP_BASE_URL', obfuscate: true)
  final String appBaseUrl = _StageEnv.appBaseUrl;

  @override
  @EnviedField(varName: 'AUTH_BASE_URL', obfuscate: true)
  final String authBaseUrl = _StageEnv.authBaseUrl;

  @override
  @EnviedField(varName: 'IMAGE_BASE_URL', obfuscate: true)
  final String imageBaseUrl = _StageEnv.imageBaseUrl;
}
