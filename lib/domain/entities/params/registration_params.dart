class RegistrationParams {
  final String phoneNumber;
  final String password;
  final String name;

  RegistrationParams({
    required this.phoneNumber,
    required this.password,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone': phoneNumber,
      'password': password,
      'name': name,
    };
  }
}
