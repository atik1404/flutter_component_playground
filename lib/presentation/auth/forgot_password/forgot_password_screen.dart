import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_event.dart';
import 'package:flutter_component_playground/presentation/auth/forgot_password/bloc/forgot_password_state.dart';
import 'package:flutter_component_playground/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/ui/widgets/text_field_error_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final String email;
  ForgotPasswordScreen({super.key, required this.email});
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (previous, current) =>
          previous.currentPageIndex != current.currentPageIndex,
      listener: (context, state) {
        _pageController.animateToPage(
          state.currentPageIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: ScaffoldAppbar(
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
            return _buildPhoneNumberUi();
          } else if (index == 1) {
            return _buildEnterOtpUi(context);
          } else {
            return _buildResetPasswordUi(context);
          }
        },
        onPageChanged: (index) {},
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

    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            final isCurrentPage = index == state.currentPageIndex;

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
      },
    );
  }

  Widget _buildPhoneNumberUi() {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              onChanged: (value) => context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.emailChanged(value),
                  ),
            ),
            if (state.status == ForgotPasswordStatus.error &&
                state.email.isNotValid)
              TextFieldErrorText(
                errorMessage: context.getString.error_invalid_email,
              ),
            SpacerBox(
              height: context.spacingSizes.large,
            ),
            AppButton(
              text: context.getString.button_continue,
              isLoading: state.status == ForgotPasswordStatus.loading,
              onPressed: () {
                context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.sentOtp(),
                    );
              },
            ),
          ],
        );
      },
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

    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return Column(
          children: [
            _buildHeder(
              context,
              context.getString.title_otp,
              context.getString.placeholder_otp_sending_message(email),
              AppImages.imgMessage,
            ),
            SpacerBox(
              height: spacingSizes.base,
            ),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              onCompleted: (pin) => context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.otpChanged(pin),
                  ),
            ),
            if (state.status == ForgotPasswordStatus.error && state.otp.isEmpty)
              TextFieldErrorText(
                errorMessage: context.getString.error_invalid_otp,
              ),
            SpacerBox(
              height: spacingSizes.large,
            ),
            AppButton(
              text: context.getString.button_reset_password,
              isLoading: state.status == ForgotPasswordStatus.loading,
              onPressed: () {
                if(state.status == ForgotPasswordStatus.progressBar) {
                  return;
                }
                context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.verifyOtp(),
                    );
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
                if (state.isTimerRunning)
                  Text(
                    state.remainTime,
                    style: context.typography.bodyMedium.copyWith(
                      color: textColors.primaryTextColor,
                    ),
                  )
                else
                  GestureDetector(
                    onTap: () {
                      context.read<ForgotPasswordBloc>().add(
                            const ForgotPasswordEvent.resentOtp(),
                          );
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
            
            SpacerBox(
              height: context.spacingSizes.large,
            ),
            if (state.status == ForgotPasswordStatus.progressBar)
              const CircularProgressIndicator(),
          ],
        );
      },
    );
  }

  Widget _buildResetPasswordUi(BuildContext context) {
    final spacingSizes = context.spacingSizes;

    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        if (state.status == ForgotPasswordStatus.success) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.pop();
          });
        }

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
              onChanged: (value) => context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.newPasswordChanged(value),
                  ),
            ),
            if (state.status == ForgotPasswordStatus.error &&
                state.newPassword.isNotValid)
              TextFieldErrorText(
                errorMessage: context.getString.error_invalid_password,
              ),
            SpacerBox(
              height: spacingSizes.base,
            ),
            AppTextField(
              hintText: context.getString.hint_enter_confirm_password,
              obscureText: true,
              textInputAction: TextInputAction.done,
              onChanged: (value) => context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.confirmPasswordChanged(value),
                  ),
            ),
            if (state.status == ForgotPasswordStatus.error &&
                (state.confirmPassword.isNotValid ||
                    state.isConfirmPasswordError))
              TextFieldErrorText(
                errorMessage: context.getString.error_invalid_confirm_password,
              ),
            SpacerBox(
              height: spacingSizes.large,
            ),
            AppButton(
              text: context.getString.button_sumit,
              isLoading: state.status == ForgotPasswordStatus.loading,
              onPressed: () {
                context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.resetPassword(),
                    );
              },
            ),
          ],
        );
      },
    );
  }
}
