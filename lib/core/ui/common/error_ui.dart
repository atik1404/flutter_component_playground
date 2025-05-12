import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/core/designsystem/resources/app_images.dart';
import 'package:flutter_component_playground/core/ui/widgets/app_button.dart';
import 'package:flutter_component_playground/core/ui/widgets/spacer_box.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';

class ErrorUi extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onRetry;
  const ErrorUi({super.key, required this.errorMessage, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final spacingSize = context.spacingSizes;
    final mediaQuery = MediaQuery.of(context);

    return Container(
      color: context.materialColors.onPrimary,
      padding: EdgeInsets.symmetric(
        horizontal: spacingSize.large,
      ),
      child: Column(
        children: [
          Image.asset(
            AppImages.imgError,
            height: mediaQuery.size.height * 0.45,
          ),
          SpacerBox(
            height: spacingSize.xLarge,
          ),
          Text(
            textAlign: TextAlign.center,
            context.getString.title_error_title,
            style: context.typography.titleLargeBold,
          ),
          SpacerBox(
            height: spacingSize.large,
          ),
          Text(
            maxLines: 2,
            textAlign: TextAlign.center,
            errorMessage,
            style: context.typography.bodyMediumLight,
          ),
          SpacerBox(
            height: spacingSize.large,
          ),
          AppButton(text: context.getString.button_retry, onPressed: onRetry),
        ],
      ),
    );
  }
}
