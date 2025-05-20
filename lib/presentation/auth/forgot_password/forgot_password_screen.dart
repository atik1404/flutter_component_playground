import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return ScaffoldAppbar(
      body: Container(
        padding: EdgeInsets.all(context.spacingSizes.base),
        width: double.infinity,
        child: Column(
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
              height: screenSize.height * 0.05,
            ),
            _buildPageIndicator(context),
            SpacerBox(
              height: 25.h,
            ),
            _buildPagerView(),
          ],
        ),
      ),
    );
  }

  Widget _buildPagerView() {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildForgotPasswordUi(context);
          } else if (index == 1) {
            return _buildEnterOtpUi(context);
          } else {
            return _buildResetPasswordUi(context);
          }
        },
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }

  Widget _buildHeder(
    BuildContext context,
    String title,
    String subTitle,
    String imagePath,
  ) {
    final spacingSizes = context.spacingSizes;

    return Column(
      children: [
        SpacerBox(
          height: spacingSizes.large,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(context.shapeRadius.base),
          child: Image.asset(
            imagePath,
            width: 110,
            height: 110,
            fit: BoxFit.fill,
          ),
        ),
        SpacerBox(
          height: spacingSizes.large,
        ),
        Text(
          title,
          style: context.typography.titleLargeBold
              .copyWith(color: context.textColors.primaryTextColor),
        ),
        SpacerBox(
          height: context.spacingSizes.base,
        ),
        Text(
          subTitle,
          style: context.typography.bodyMediumLight
              .copyWith(color: context.materialColors.onPrimaryContainer),
          textAlign: TextAlign.center,
        ),
        SpacerBox(
          height: spacingSizes.large,
        ),
      ],
    );
  }

  Widget _buildPageIndicator(BuildContext context) {
    final materialColors = context.materialColors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        final isCurrentPage = _currentPage == index;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.only(right: context.spacingSizes.base),
          width: 30.w,
          height: 3.h,
          decoration: BoxDecoration(
            color: isCurrentPage
                ? materialColors.primary
                : context.strokeColors.primaryStrokeColor,
            borderRadius: BorderRadius.circular(5.r),
          ),
        );
      }),
    );
  }

  Widget _buildForgotPasswordUi(BuildContext context) {
    return Column(
      children: [
        _buildHeder(
          context,
          context.getString.title_forgot_password,
          context.getString.msg_forgot_password,
          AppImages.imgMessage,
        ),
        SpacerBox(
          height: context.spacingSizes.base,
        ),
        AppTextField(
          hintText: context.getString.hint_enter_email,
          keyboardType: TextInputType.emailAddress,
        ),
        SpacerBox(
          height: context.spacingSizes.large,
        ),
        AppButton(
          text: context.getString.button_continue,
          onPressed: () {
            setState(() {
              _currentPage = 1;
            });
            _pageController.animateToPage(
              _currentPage,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
            Fluttertoast.showToast(msg: "Continue button clicked");
          },
        ),
      ],
    );
  }

  Widget _buildEnterOtpUi(BuildContext context) {
    final textColors = context.textColors;
    final spacingSizes = context.spacingSizes;

    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: context.typography.titleLargeBold
          .copyWith(color: textColors.primaryTextColor),
      decoration: BoxDecoration(
        color: context.backgroundColors.primaryBackgroundColor,
        border: Border.all(color: context.strokeColors.primaryStrokeColor),
        borderRadius: BorderRadius.circular(context.shapeRadius.medium),
      ),
    );

    return Column(
      children: [
        _buildHeder(
          context,
          context.getString.title_otp,
          context.getString.msg_forgot_password,
          AppImages.imgMessage,
        ),
        SpacerBox(
          height: spacingSizes.base,
        ),
        Pinput(
          defaultPinTheme: defaultPinTheme,
          onCompleted: (pin) => print(pin),
        ),
        SpacerBox(
          height: spacingSizes.large,
        ),
        AppButton(
          text: context.getString.button_reset_password,
          onPressed: () {
            setState(() {
              _currentPage = 2;
            });
            _pageController.animateToPage(
              _currentPage,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
            Fluttertoast.showToast(msg: "Reset button clicked");
          },
        ),
        SpacerBox(
          height: context.spacingSizes.large,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.getString.text_dont_have_account,
              style: context.typography.bodyMediumLight
                  .copyWith(color: textColors.primaryTextColor),
            ),
            SpacerBox(
              width: context.spacingSizes.small,
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: "Resent OTP button clicked");
              },
              child: Text(
                context.getString.text_resend_otp,
                style: context.typography.bodyMedium.copyWith(
                  color: textColors.primaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildResetPasswordUi(BuildContext context) {
    final spacingSizes = context.spacingSizes;

    return Column(
      children: [
        _buildHeder(
          context,
          context.getString.title_reset_password,
          context.getString.msg_forgot_password,
          AppImages.imgResetPassword,
        ),
        SpacerBox(
          height: spacingSizes.base,
        ),
        AppTextField(
          hintText: context.getString.hint_enter_new_password,
          obscureText: true,
        ),
        SpacerBox(
          height: spacingSizes.base,
        ),
        AppTextField(
          hintText: context.getString.hint_enter_confirm_password,
          obscureText: true,
          textInputAction: TextInputAction.done,
        ),
        SpacerBox(
          height: spacingSizes.large,
        ),
        AppButton(
          text: context.getString.button_sumit,
          onPressed: () {
            Fluttertoast.showToast(msg: "Submit button clicked");
          },
        ),
      ],
    );
  }
}
