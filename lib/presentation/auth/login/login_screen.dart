import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldAppbar(
      body: Center(
        child: Text("Login screen"),
      ),
    );
  }
}
