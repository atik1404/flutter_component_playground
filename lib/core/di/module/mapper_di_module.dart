import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/data/mappers/auth/login_api_mapper.dart';

Future<void> registerMapperModule() async {
  di.registerFactory(LoginApiMapper.new);

  return;
}
