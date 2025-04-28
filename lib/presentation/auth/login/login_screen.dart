import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/dimensions/dimension_aggregator.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spacingSizes = context.spacingSizes;
    final typography = context.typography;
    final textColors = context.textColors;

    return ScaffoldAppbar(
      body: Container(
        padding: EdgeInsets.all(context.spacingSizes.base),
        width: double.infinity,
        height: double.infinity,
        child: Column(
        children: [
          SpacerBox(
            height: context.spacingSizes.large,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(context.shapeRadius.base),
              child: Image.asset(
                AppImages.appLogo,
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SpacerBox(
            height: spacingSizes.large,
          ),
          Text(
            context.getString.text_sign_up,
            style: typography.titleLargeBold
                .copyWith(color: textColors.primaryTextColor),
          ),
          SpacerBox(
            height: spacingSizes.base,
          ),
          Text(
            context.getString.msg_login,
            style: typography.bodyMediumLight
                .copyWith(color: context.materialColors.onPrimaryContainer),
            textAlign: TextAlign.center,
          ),
          SpacerBox(
            height: spacingSizes.base,
          ),
        ],
      ),
      ),
    );
  }
}
