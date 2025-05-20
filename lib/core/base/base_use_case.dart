
import 'package:flutter_component_playground/core/network/result.dart';

abstract class BaseUseCase{}

abstract class ApiUseCase<Params,Type> implements BaseUseCase{
  Future<Result<Type>> invoke(Params params);
}

abstract class NoParamApiUseCase<Type> implements BaseUseCase{
  Future<Result<Type>> invoke();
}

abstract class RegularApiUseCase<Type> implements BaseUseCase{
  Type invoke();
}