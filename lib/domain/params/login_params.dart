import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_params.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginParams {
  final String email;
  final String password;

  const LoginParams({
    required this.email,
    required this.password,
  });

   Map<String, dynamic> toJson() => _$LoginParamsToJson(this);
}
