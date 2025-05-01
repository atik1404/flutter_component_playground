import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/core/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/core/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/core/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spacingSizes = context.spacingSizes;
    final typography = context.typography;
    final textColors = context.textColors;
    final getString = context.getString;
    final mediaQuery = MediaQuery.of(context);

    return ScaffoldAppbar(
      reisizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(context.spacingSizes.base),
          width: double.infinity,
          height: mediaQuery.size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SpacerBox(
                height: context.spacingSizes.large,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(context.shapeRadius.base),
                  child: Image.asset(
                    AppImages.appLogo,
                    width: 110,
                    height: 110,
                    fit: BoxFit.fill,
                  ),
                ),
              SpacerBox(
                height: spacingSizes.large,
              ),
              Text(
                getString.text_sign_up,
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
                height: spacingSizes.large,
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
              SpacerBox(
                height: spacingSizes.large,
              ),
              _buildDivider(context),
              SpacerBox(
                height: spacingSizes.large,
              ),
              Column(
                children: [
                  AppTextField(
                    hintText: context.getString.hint_enter_email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SpacerBox(
                    height: spacingSizes.base,
                  ),
                  AppTextField(
                    hintText: context.getString.hint_enter_password,
                    obscureText: true,
                  ),
                ],
              ),
            
              SpacerBox(
                height: spacingSizes.base,
              ),

              Row(
                children: [
                  const Spacer(),
                  Text(
                    context.getString.text_forget_password,
                    style: typography.bodyMediumRegular
                        .copyWith(color: textColors.primaryTextColor),
                  ),
                ],
              ),

              SpacerBox(
                height: spacingSizes.large,
              ),
              AppButton(text: context.getString.button_login, onPressed: () {
                Fluttertoast.showToast(msg: "Login button clicked");
              }),

              SpacerBox(
                height: spacingSizes.base,
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.getString.text_dont_have_account,
                    style: typography.bodyMediumLight
                        .copyWith(color: textColors.primaryTextColor),
                  ),
                  SpacerBox(
                    width: spacingSizes.small,
                  ),
                  Text(
                    getString.text_sign_up,
                    style: typography.bodyMedium
                        .copyWith(color: textColors.primaryTextColor),
                  ),
                ],
              ),
            ],
          ),
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

  Widget _buildDivider(BuildContext context) {
    final spacingSizes = context.spacingSizes;
    final typography = context.typography;
    final textColors = context.textColors;
    final strokeColors = context.strokeColors;
    final lineSizes = context.lineSizes;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: lineSizes.thin,
            color: strokeColors.secondaryStrokeColor,
          ),
        ),
        SpacerBox(
          width: spacingSizes.base,
        ),
        Text(
          context.getString.text_or,
          style: typography.bodyMedium
              .copyWith(color: textColors.primaryTextColor),
        ),
        SpacerBox(
          width: spacingSizes.base,
        ),
        Expanded(
          child: Container(
            height: lineSizes.thin,
            color: strokeColors.secondaryStrokeColor,
          ),
        ),
      ],
    );
  }
}
