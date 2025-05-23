import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/utils/logger_utils';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/designsystem/resources/app_icons.dart';
import 'package:flutter_component_playground/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_bloc.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_event.dart';
import 'package:flutter_component_playground/presentation/auth/registration/bloc/registration_state.dart';
import 'package:flutter_component_playground/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/ui/widgets/app_checkbox.dart';
import 'package:flutter_component_playground/ui/widgets/app_text_field.dart';
import 'package:flutter_component_playground/ui/widgets/multi_color_text.dart';
import 'package:flutter_component_playground/ui/widgets/scaffold_appbar.dart';
import 'package:flutter_component_playground/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_component_playground/ui/widgets/text_field_error_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

/// Registration screen for user sign up.
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final spacingSizes = context.spacingSizes;

    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state.formValidationStatus.isSuccess) {
          log.info('Registration successful');
          Fluttertoast.showToast(
            msg: "Registration successful",
          );
        } else if (state.formValidationStatus.isFailure) {
          log.info('Registration failed');
        }
      },
      child: ScaffoldAppbar(
        reisizeToAvoidBottomInset: true,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: spacingSizes.base),
              child: _buildBackButtonRow(context),
            ),
            SpacerBox(height: spacingSizes.large),
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: spacingSizes.large,
                    vertical: spacingSizes.xLarge,
                  ),
                  child: _buildContent(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the main content column of the registration screen.
  Widget _buildContent(BuildContext context) {
    final spacingSizes = context.spacingSizes;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildLogo(context),
        SpacerBox(height: spacingSizes.large),
        _buildTitle(context),
        SpacerBox(height: spacingSizes.base),
        _buildSubtitle(context),
        SpacerBox(height: spacingSizes.large),
        _buildSocialLoginRow(context),
        SpacerBox(height: spacingSizes.large),
        _buildDivider(context),
        SpacerBox(height: spacingSizes.large),
        _buildFormFields(context),
        SpacerBox(height: spacingSizes.base),
        _buildAgreementCheckbox(context),
        SpacerBox(height: spacingSizes.xLarge),
        _buildCreateAccountButton(context),
        SpacerBox(height: spacingSizes.base),
        _buildSignInRow(context),
      ],
    );
  }

  /// Builds the back button row at the top.
  Widget _buildBackButtonRow(BuildContext context) {
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

  /// Builds the app logo.
  Widget _buildLogo(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(context.shapeRadius.base),
      child: Image.asset(
        AppImages.appLogo,
        width: 110,
        height: 110,
        fit: BoxFit.fill,
      ),
    );
  }

  /// Builds the title text.
  Widget _buildTitle(BuildContext context) {
    final getString = context.getString;
    final typography = context.typography;
    final textColors = context.textColors;

    return Text(
      getString.text_sign_up,
      style: typography.titleLargeBold.copyWith(
        color: textColors.primaryTextColor,
      ),
    );
  }

  /// Builds the subtitle text.
  Widget _buildSubtitle(BuildContext context) {
    final getString = context.getString;
    final typography = context.typography;
    final materialColors = context.materialColors;

    return Text(
      getString.msg_sign_up,
      style: typography.bodyMediumLight.copyWith(
        color: materialColors.onPrimaryContainer,
      ),
      textAlign: TextAlign.center,
    );
  }

  /// Builds the social login buttons row.
  Widget _buildSocialLoginRow(BuildContext context) {
    final spacingSizes = context.spacingSizes;

    return Row(
      children: [
        Expanded(
          child: _buildSocialLoginButton(
            context,
            AppIcons.icFacebook,
            context.getString.text_facebook,
          ),
        ),
        SpacerBox(width: spacingSizes.base),
        Expanded(
          child: _buildSocialLoginButton(
            context,
            AppIcons.icGoogle,
            context.getString.text_google,
          ),
        ),
      ],
    );
  }

  /// Builds a single social login button.
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
      padding: EdgeInsets.symmetric(horizontal: spacingSizes.large),
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
          SpacerBox(width: spacingSizes.base),
          Expanded(
            child: Text(
              text,
              style: context.typography.bodyMedium.copyWith(
                color: context.textColors.primaryTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the divider with "or" text.
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
        SpacerBox(width: spacingSizes.base),
        Text(
          context.getString.text_or,
          style: typography.bodyMedium.copyWith(
            color: textColors.primaryTextColor,
          ),
        ),
        SpacerBox(width: spacingSizes.base),
        Expanded(
          child: Container(
            height: lineSizes.thin,
            color: strokeColors.secondaryStrokeColor,
          ),
        ),
      ],
    );
  }

  /// Builds the registration form fields.
  Widget _buildFormFields(BuildContext context) {
    final spacingSizes = context.spacingSizes;
    final getString = context.getString;

    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTextField(
              hintText: getString.hint_enter_name,
              keyboardType: TextInputType.name,
              onChanged: (value) => context.read<RegistrationBloc>().add(
                    RegistrationEvent.nameChanged(value),
                  ),
            ),
            if (state.isErrorVisible && state.name.isNotValid)
              TextFieldErrorText(
                errorMessage: getString.error_invalid_name,
              ),
            SpacerBox(height: spacingSizes.base),
            AppTextField(
              hintText: getString.hint_enter_phone,
              keyboardType: TextInputType.phone,
              maxLength: 11,
              onChanged: (value) => context.read<RegistrationBloc>().add(
                    RegistrationEvent.phoneNumberChanged(value),
                  ),
            ),
            if (state.isErrorVisible && state.phoneNumber.isNotValid)
              TextFieldErrorText(
                errorMessage: getString.error_invalid_phone_number,
              ),
            SpacerBox(height: spacingSizes.base),
            AppTextField(
              hintText: getString.hint_enter_password,
              obscureText: true,
              onChanged: (value) => context.read<RegistrationBloc>().add(
                    RegistrationEvent.passwordChanged(value),
                  ),
            ),
            if (state.isErrorVisible && state.password.isNotValid)
              TextFieldErrorText(
                errorMessage: getString.error_invalid_password,
              ),
            SpacerBox(height: spacingSizes.base),
            AppTextField(
              hintText: getString.hint_enter_confirm_password,
              obscureText: true,
              onChanged: (value) => context.read<RegistrationBloc>().add(
                    RegistrationEvent.confirmPasswordChanged(value),
                  ),
            ),
            if (state.isErrorVisible)
              TextFieldErrorText(
                errorMessage: getString.error_invalid_confirm_password,
              ),
          ],
        );
      },
    );
  }

  /// Builds the agreement checkbox with terms and privacy policy.
  Widget _buildAgreementCheckbox(BuildContext context) {
    final typography = context.typography;
    final textColors = context.textColors;
    final getString = context.getString;
    final primaryTextStyle = typography.bodyMediumBold.copyWith(
      color: textColors.primaryTextColor,
    );
    final secondaryTextStyle = typography.bodyMediumLight.copyWith(
      color: textColors.secondaryTextColor,
    );

    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        return AppCheckbox(
          value: state.isPrivacyPolicyAccepted,
          onChanged: (value) {
            context.read<RegistrationBloc>().add(
                  PrivacyPolicyAccepted(value ?? false),
                );
          },
          labelText: MultiColorText(
            textSpans: [
              TextSpan(
                text: getString.text_agreed,
                style: secondaryTextStyle,
              ),
              TextSpan(
                text: getString.text_terms,
                style: primaryTextStyle,
              ),
              TextSpan(
                text: getString.text_and,
                style: secondaryTextStyle,
              ),
              TextSpan(
                text: getString.text_privacy_policy,
                style: primaryTextStyle,
              ),
            ],
          ),
        );
      },
    );
  }

  /// Builds the create account button.
  Widget _buildCreateAccountButton(BuildContext context) {
    final getString = context.getString;

    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        final isLoading = state.formValidationStatus.isInProgress;

        return AppButton(
          text: getString.button_create_account,
          isLoading: isLoading,
          onPressed: () {
            context.read<RegistrationBloc>().add(
                  const RegistrationSubmitted(),
                );
          },
          isDisabled: !state.isPrivacyPolicyAccepted,
        );
      },
    );
  }

  /// Builds the sign-in row at the bottom.
  Widget _buildSignInRow(BuildContext context) {
    final typography = context.typography;
    final textColors = context.textColors;
    final getString = context.getString;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          getString.text_have_account,
          style: typography.bodyMediumLight.copyWith(
            color: textColors.primaryTextColor,
          ),
        ),
        SpacerBox(width: context.spacingSizes.small),
        GestureDetector(
          onTap: () => context.pop(),
          child: Text(
            getString.text_sign_in,
            style: typography.bodyMedium.copyWith(
              color: textColors.primaryTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
