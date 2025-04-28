import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Row(
              children: [
                Expanded(
                  child: _buildSocialLoginButton(
                    context,
                    AppIcons.icFacebook,
                    context.getString.text_facebook,
                  ),
                ),
                SpacerBox(
                  width: spacingSizes.base,
                ),
                Expanded(
                  child: _buildSocialLoginButton(
                    context,
                    AppIcons.icGoogle,
                    context.getString.text_google,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialLoginButton(
    BuildContext context,
    String imagePath,
    String text,
  ) {
    final spacingSizes = context.spacingSizes;
    final iconSizes = context.iconSizes;
    final backgroundColors = context.backgroundColors;

    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(
        horizontal: spacingSizes.large,
      ),
      decoration: BoxDecoration(
        color: backgroundColors.primaryBackgroundColor,
        borderRadius: BorderRadius.circular(context.shapeRadius.base),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: iconSizes.medium,
            height: iconSizes.medium,
          ),
          SpacerBox(
            width: spacingSizes.base,
          ),
          Expanded(
            child: Text(
              text,
              style: context.typography.bodyMedium
                  .copyWith(color: context.textColors.primaryTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
