import 'package:freezed_annotation/freezed_annotation.dart';
part 'registration_params.g.dart';

@JsonSerializable(explicitToJson: true)

class RegistrationParams {
  final String email;
  final String password;
  final String name;
  final String role;
  final String avatar;

  RegistrationParams({
    required this.email,
    required this.password,
    required this.name,
    this.role = "customer",
    this.avatar =
        "https://parade.com/.image/t_share/MTkwNTc4NzcwMDEwOTczMzA5/tom-cruise-net-worth.jpg",
  });

  Map<String, dynamic> toJson() => _$RegistrationParamsToJson(this);
}
