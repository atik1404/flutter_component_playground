import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/extensions/theme_context_extension.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFullWidth;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool isDisabled;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isFullWidth = true,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 15.0,
    this.padding,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final buttonBackgroundColor = isDisabled
        ? context.buttonColors.disable
        : (backgroundColor ?? context.buttonColors.primary);

    return SizedBox(
      width: isFullWidth ? double.infinity : width,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding ??
              EdgeInsets.symmetric(
                vertical: context.spacingSizes.base,
              ),
        ),
        child: Text(
          text,
          style: context.typography.bodyLargeSemiBold.copyWith(
            color: textColor ?? context.textColors.whiteTextColor,
          ),
        ),
      ),
    );
  }
}
