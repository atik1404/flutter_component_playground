import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';

class TextFieldErrorText extends StatelessWidget {
  final String errorMessage;

  const TextFieldErrorText({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    final spacing = context.spacingSizes;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: spacing.medium,
        horizontal: spacing.medium,
      ),
      child: Text(
        errorMessage,
        style: context.typography.bodySmallLight
            .copyWith(color: context.materialColors.error),
      ),
    );
  }
}
