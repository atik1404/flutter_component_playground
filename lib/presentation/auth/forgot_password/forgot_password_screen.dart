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
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key,});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (prev, curr) =>
          prev.currentPageIndex != curr.currentPageIndex,
      listener: (context, state) {
        _pageController.animateToPage(
          state.currentPageIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: ScaffoldAppbar(
        body: Padding(
          padding: EdgeInsets.all(context.spacingSizes.base),
          child: Column(
            children: [
              _buildTopBar(context),
              SpacerBox(height: screenSize.height * 0.05),
              _buildPageIndicator(context),
              SpacerBox(height: 25.h),
              _buildPagerView(),
            ],
          ),
        ),
      ),
    );
  }

  /// Top navigation row with back button
  Widget _buildTopBar(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.pop(),
          child: SvgPicture.asset(
            AppIcons.icBack,
            width: 30.w,
            height: 30.h,
          ),
        ),
        const Spacer(),
      ],
    );
  }

  /// Step indicator based on current page index from bloc
  Widget _buildPageIndicator(BuildContext context) {
    final colors = context.materialColors;

    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (_, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (i) {
            final isActive = i == state.currentPageIndex;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.only(right: context.spacingSizes.base),
              width: 30.w,
              height: 3.h,
              decoration: BoxDecoration(
                color: isActive
                    ? colors.primary
                    : context.strokeColors.primaryStrokeColor,
                borderRadius: BorderRadius.circular(5.r),
              ),
            );
          }),
        );
      },
    );
  }

  /// View pager controlling screen steps (1-3)
  Widget _buildPagerView() {
    return Expanded(
      child: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return _buildPhoneNumberUi();
            case 1:
              return _buildEnterOtpUi(context);
            default:
              return _buildResetPasswordUi();
          }
        },
      ),
    );
  }

  /// Reusable header widget with icon, title, and subtitle
  Widget _buildHeader(
    BuildContext context,
    String title,
    String subtitle,
    String image,
  ) {
    final spacingSizes = context.spacingSizes;

    return Column(
      children: [
        SpacerBox(height: spacingSizes.large),
        ClipRRect(
          borderRadius: BorderRadius.circular(context.shapeRadius.base),
          child: Image.asset(image, width: 110, height: 110, fit: BoxFit.fill),
        ),
        SpacerBox(height: spacingSizes.large),
        Text(
          title,
          style: context.typography.titleLargeBold.copyWith(
            color: context.textColors.primaryTextColor,
          ),
        ),
        SpacerBox(height: spacingSizes.base),
        Text(
          subtitle,
          style: context.typography.bodyMediumLight.copyWith(
            color: context.materialColors.onPrimaryContainer,
          ),
          textAlign: TextAlign.center,
        ),
        SpacerBox(height: context.spacingSizes.large),
      ],
    );
  }

  /// Step 1: Email/Phone input
  Widget _buildPhoneNumberUi() {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(
              context,
              context.getString.title_forgot_password,
              context.getString.msg_forgot_password,
              AppImages.imgMessage,
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
            SpacerBox(height: context.spacingSizes.large),
            AppButton(
              text: context.getString.button_continue,
              isLoading: state.status == ForgotPasswordStatus.loading,
              onPressed: () => context.read<ForgotPasswordBloc>().add(
                    const ForgotPasswordEvent.sentOtp(),
                  ),
            ),
          ],
        );
      },
    );
  }

  /// Step 2: OTP verification input
  Widget _buildEnterOtpUi(BuildContext context) {
    final typography = context.typography;
    final spacingSizes = context.spacingSizes;
    final textColors = context.textColors;

    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: typography.titleLargeBold.copyWith(
        color: textColors.primaryTextColor,
      ),
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
            _buildHeader(
              context,
              context.getString.title_otp,
              context.getString.placeholder_otp_sending_message(state.email.value),
              AppImages.imgMessage,
            ),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              onCompleted: (pin) => context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordEvent.otpChanged(pin),
                  ),
            ),
            if (state.status == ForgotPasswordStatus.error &&
                state.otp.isNotValid)
              TextFieldErrorText(
                errorMessage: context.getString.error_invalid_otp,
              ),
            SpacerBox(height: spacingSizes.large),
            AppButton(
              text: context.getString.button_reset_password,
              isLoading: state.status == ForgotPasswordStatus.loading,
              onPressed: () {
                if (state.status != ForgotPasswordStatus.progressBar) {
                  context.read<ForgotPasswordBloc>().add(
                        const ForgotPasswordEvent.verifyOtp(),
                      );
                }
              },
            ),
            SpacerBox(height: spacingSizes.large),
            _buildOtpTimerOrResend(context, state),
            if (state.status == ForgotPasswordStatus.progressBar)
              const CircularProgressIndicator(),
          ],
        );
      },
    );
  }

  /// Timer countdown or resend button
  Widget _buildOtpTimerOrResend(
    BuildContext context,
    ForgotPasswordState state,
  ) {
    final text = context.textColors;
    final typography = context.typography;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.getString.text_dont_have_account,
          style:
              typography.bodyMediumLight.copyWith(color: text.primaryTextColor),
        ),
        SpacerBox(width: context.spacingSizes.small),
        if (state.isTimerRunning)
          Text(
            state.remainTime,
            style: typography.bodyMedium.copyWith(color: text.primaryTextColor),
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
              style: typography.bodyMediumSemiBold
                  .copyWith(color: text.primaryTextColor),
            ),
          ),
      ],
    );
  }

  /// Step 3: Reset password input
  Widget _buildResetPasswordUi() {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        if (state.status == ForgotPasswordStatus.success) {
          WidgetsBinding.instance.addPostFrameCallback((_) => context.pop());
        }

        return Column(
          children: [
            _buildHeader(
              context,
              context.getString.title_reset_password,
              context.getString.msg_forgot_password,
              AppImages.imgResetPassword,
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
            SpacerBox(height: context.spacingSizes.base),
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
            SpacerBox(height: context.spacingSizes.large),
            AppButton(
              text: context.getString.button_sumit,
              isLoading: state.status == ForgotPasswordStatus.loading,
              onPressed: () => context.read<ForgotPasswordBloc>().add(
                    const ForgotPasswordEvent.resetPassword(),
                  ),
            ),
          ],
        );
      },
    );
  }
}
