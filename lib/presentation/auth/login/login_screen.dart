import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldAppbar(
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(context.shapeRadius.base),
              child: Image.asset(
                AppImages.appLogo,
                width: 180,
                height: 180,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
