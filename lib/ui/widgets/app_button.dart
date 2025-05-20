import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';
import 'package:flutter_component_playground/localization/localize_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  final bool isLoading;

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
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final buttonStyle = context.typography.bodyLargeSemiBold.copyWith(
      color: textColor ?? context.textColors.whiteTextColor,
    );

    final buttonBackgroundColor = isDisabled
        ? context.buttonColors.disable
        : (backgroundColor ?? context.buttonColors.primary);

    return SizedBox(
      width: isFullWidth ? double.infinity : width,
      child: ElevatedButton(
        onPressed: isDisabled ? null : (isLoading ? () {} : onPressed),
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
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15.h, // Set the height
                    width: 15.w, // Set the width
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: context.lineSizes.thin,
                    ),
                  ),
                  SizedBox(width: context.spacingSizes.medium),
                  Text(
                    context.getString.button_please_wait,
                    style: buttonStyle,
                  ),
                ],
              )
            : Text(
                text,
                style: buttonStyle,
              ),
      ),
    );
  }
}
