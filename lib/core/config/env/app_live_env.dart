import 'package:envied/envied.dart';
import 'package:flutter_component_playground/core/config/app_core_env.dart';
import 'package:flutter_component_playground/core/config/env/app_env_fields.dart';

part 'app_live_env.g.dart';

@Envied(name: 'LiveEnv', path: '.env_live')
final class AppLiveEnv implements AppCoreEnv, AppEnvFields {
  AppLiveEnv();
  @override
  @EnviedField(varName: 'APP_BASE_URL', obfuscate: true)
  final String appBaseUrl = _LiveEnv.appBaseUrl;

  @override
  @EnviedField(varName: 'AUTH_BASE_URL', obfuscate: true)
  final String authBaseUrl = _LiveEnv.authBaseUrl;

  @override
  @EnviedField(varName: 'IMAGE_BASE_URL', obfuscate: true)
  final String imageBaseUrl = _LiveEnv.imageBaseUrl;
}
