import 'package:flutter_component_playground/core/network/result.dart';
import 'package:flutter_component_playground/domain/entities/apientity/login_entity.dart';
import 'package:flutter_component_playground/domain/params/login_params.dart';

abstract class AuthRepository {
  Future<Result<LoginEntity>> login(LoginParams params);
}