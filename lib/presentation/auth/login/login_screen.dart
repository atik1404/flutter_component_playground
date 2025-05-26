import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/navigation/app_route.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_event.dart';
import 'package:flutter_component_playground/presentation/auth/login/bloc/login_state.dart';
import 'package:flutter_component_playground/ui/widgets/text_field_error_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

/// Refactored LoginScreen using private builder methods
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacingSizes;

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.formValidationStatus.isSuccess) {
          Fluttertoast.showToast(msg: "Login Successful, go to home screen");
        } else if (state.formValidationStatus.isFailure) {
          if (state.loginErrorMessage.isNotEmpty) {
            Fluttertoast.showToast(msg: state.loginErrorMessage);
          }
        }
      },
      child: ScaffoldAppbar(
        reisizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.all(spacing.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildLogo(context),
                SpacerBox(height: spacing.large),
                _buildTitle(context),
                SpacerBox(height: spacing.large),
                _buildSocialRow(context),
                SpacerBox(height: spacing.large),
                _buildDivider(context),
                SpacerBox(height: spacing.large),
                _buildForm(context),
                SpacerBox(height: spacing.base),
                _buildForgotPassword(context),
                SpacerBox(height: spacing.large),
                _buildLoginButton(),
                SpacerBox(height: spacing.base),
                _buildSignUpText(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// App logo at the top
  Widget _buildLogo(BuildContext context) => Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(context.shapeRadius.base),
          child: Image.asset(
            AppImages.appLogo,
            width: 110,
            height: 110,
            fit: BoxFit.fill,
          ),
        ),
      );

  /// Sign-in title and subtitle
  Widget _buildTitle(BuildContext context) {
    final typography = context.typography;
    final textColors = context.textColors;
    final getString = context.getString;

    return Column(
      children: [
        Text(
          getString.text_sign_in,
          style: typography.titleLargeBold
              .copyWith(color: textColors.primaryTextColor),
        ),
        SpacerBox(height: context.spacingSizes.base),
        Text(
          getString.msg_login,
          style: typography.bodyMediumLight
              .copyWith(color: context.materialColors.onPrimaryContainer),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  /// Row of Facebook and Google login buttons
  Widget _buildSocialRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildSocialButton(
            context,
            AppIcons.icFacebook,
            context.getString.text_facebook,
            () => context.goNamed(AppRoute.homeScreen),
          ),
        ),
        SpacerBox(width: context.spacingSizes.base),
        Expanded(
          child: _buildSocialButton(
            context,
            AppIcons.icGoogle,
            context.getString.text_google,
            () => context.goNamed(AppRoute.homeScreen),
          ),
        ),
      ],
    );
  }

  /// Individual social login button
  Widget _buildSocialButton(
    BuildContext context,
    String asset,
    String label,
    VoidCallback onTap,
  ) {
    final spacing = context.spacingSizes;
    final iconSizes = context.iconSizes;
    final bgColor = context.backgroundColors.primaryBackgroundColor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: spacing.large),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(context.shapeRadius.base),
        ),
        child: Row(
          children: [
            Image.asset(
              asset,
              width: iconSizes.medium,
              height: iconSizes.medium,
            ),
            SpacerBox(width: spacing.base),
            Expanded(
              child: Text(
                label,
                style: context.typography.bodyMedium.copyWith(
                  color: context.textColors.primaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Divider with "OR" text
  Widget _buildDivider(BuildContext context) {
    final spacing = context.spacingSizes;
    final strokeColors = context.strokeColors;
    final lineSizes = context.lineSizes;
    final typography = context.typography;
    final textColors = context.textColors;

    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: lineSizes.thin,
            color: strokeColors.secondaryStrokeColor,
          ),
        ),
        SpacerBox(width: spacing.base),
        Text(
          context.getString.text_or,
          style: typography.bodyMedium
              .copyWith(color: textColors.primaryTextColor),
        ),
        SpacerBox(width: spacing.base),
        Expanded(
          child: Divider(
            thickness: lineSizes.thin,
            color: strokeColors.secondaryStrokeColor,
          ),
        ),
      ],
    );
  }

  /// Email and password input fields
  Widget _buildForm(BuildContext context) {
    final spacing = context.spacingSizes;

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTextField(
              onChanged: (value) =>
                  context.read<LoginBloc>().add(LoginEvent.emailChanged(value)),
              hintText: context.getString.hint_enter_email,
              keyboardType: TextInputType.emailAddress,
              maxLength: 30,
            ),
            if (state.isErrorVisible && state.email.isNotValid)
              TextFieldErrorText(
                errorMessage: context.getString.error_invalid_email,
              ),
            SpacerBox(height: spacing.base),
            AppTextField(
              onChanged: (value) => context
                  .read<LoginBloc>()
                  .add(LoginEvent.passwordChanged(value)),
              hintText: context.getString.hint_enter_password,
              obscureText: true,
              maxLength: 20,
              textInputAction: TextInputAction.done,
            ),
            if (state.isErrorVisible && state.password.isNotValid)
              TextFieldErrorText(
                errorMessage: context.getString.error_invalid_password,
              ),
          ],
        );
      },
    );
  }

  /// "Forgot password" link
  Widget _buildForgotPassword(BuildContext context) => Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () => context.pushNamed(AppRoute.forgotPasswordScreen),
          child: Text(
            context.getString.text_forget_password,
            style: context.typography.bodyMediumSemiBold.copyWith(
              color: context.textColors.primaryTextColor,
            ),
          ),
        ),
      );

  /// Login button
  Widget _buildLoginButton() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final isLoading = state.formValidationStatus.isInProgress;

        return AppButton(
          text: context.getString.button_login,
          isLoading: isLoading,
          onPressed: () {
            context.read<LoginBloc>().add(
                  const LoginSubmitted(),
                );
          },
        );
      },
    );
  }

  /// Sign-up prompt at bottom
  Widget _buildSignUpText(BuildContext context) {
    final spacing = context.spacingSizes;
    final textColors = context.textColors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.getString.text_dont_have_account,
          style: context.typography.bodyMediumLight.copyWith(
            color: textColors.primaryTextColor,
          ),
        ),
        SpacerBox(width: spacing.small),
        GestureDetector(
          onTap: () => context.pushNamed(AppRoute.registrationScreen),
          child: Text(
            context.getString.text_sign_up,
            style: context.typography.bodyMedium.copyWith(
              color: textColors.primaryTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
