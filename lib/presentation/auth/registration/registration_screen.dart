import 'package:flutter/widgets.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/ui/widgets/app_checkbox.dart';
import 'package:flutter_component_playground/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/ui/widgets/multi_color_text.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isChecked = false;
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
        physics: const ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(context.spacingSizes.base),
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                mediaQuery.viewInsets.bottom, // Adjust for keyboard
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: SvgPicture.asset(
                      AppIcons.icBack,
                      width: 30.w,
                      height: 30.h,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
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
                context.getString.msg_sign_up,
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
                    hintText: getString.hint_enter_name,
                    keyboardType: TextInputType.name,
                  ),
                  SpacerBox(
                    height: spacingSizes.base,
                  ),
                  AppTextField(
                    hintText: getString.hint_enter_email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SpacerBox(
                    height: spacingSizes.base,
                  ),
                  AppTextField(
                    hintText: getString.hint_enter_password,
                    obscureText: true,
                  ),
                  SpacerBox(
                    height: spacingSizes.base,
                  ),
                  AppTextField(
                    hintText: getString.hint_enter_confirm_password,
                    obscureText: true,
                  ),
                ],
              ),
              SpacerBox(
                height: spacingSizes.base,
              ),
              AppCheckbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
                labelText: MultiColorText(
                  textSpans: [
                    TextSpan(
                      text: getString.text_agreed,
                      style: typography.bodyMediumLight
                          .copyWith(color: textColors.secondaryTextColor),
                    ),
                    TextSpan(
                      text: getString.text_terms,
                      style: typography.bodyMediumBold
                          .copyWith(color: textColors.primaryTextColor),
                    ),
                    TextSpan(
                      text: getString.text_and,
                      style: typography.bodyMediumLight
                          .copyWith(color: textColors.secondaryTextColor),
                    ),
                    TextSpan(
                      text: getString.text_privacy_policy,
                      style: typography.bodyMediumBold
                          .copyWith(color: textColors.primaryTextColor),
                    ),
                  ],
                ),
              ),
              SpacerBox(
                height: spacingSizes.xLarge,
              ),
              AppButton(
                text: getString.button_create_account,
                onPressed: () {
                  Fluttertoast.showToast(msg: "Create account button clicked");
                },
                isDisabled: !isChecked,
              ),
              SpacerBox(
                height: spacingSizes.base,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.getString.text_have_account,
                    style: typography.bodyMediumLight
                        .copyWith(color: textColors.primaryTextColor),
                  ),
                  SpacerBox(
                    width: spacingSizes.small,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Text(
                      getString.text_sign_in,
                      style: typography.bodyMedium.copyWith(
                        color: textColors.primaryTextColor,
                      ),
                    ),
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
