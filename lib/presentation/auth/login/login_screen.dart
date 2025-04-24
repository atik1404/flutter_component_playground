import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppbar(
      body: Center(
        child: AppTextField(
          hintText: context.getString.hint_enter_email,
        ),
      ),
    );
  }
}
