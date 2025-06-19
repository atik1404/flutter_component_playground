import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_state.freezed.dart';

@freezed
class ApiState<T>  with _$ApiState {
  const factory ApiState.initial() = Initial<T>;
  const factory ApiState.loading() = Loading<T>;
  const factory ApiState.success(T data) = Success<T>;
  const factory ApiState.error(String message) = Error<T>;
}
