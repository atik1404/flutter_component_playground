import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';

final class TextFieldColor extends ThemeExtension<TextFieldColor> {
  final Color fillColor;
  final Color hintColor;
  final Color focusedBorderColor;
  final Color disableBorderColor;
  final Color error;

  TextFieldColor(
      {required this.fillColor,
      required this.hintColor,
      required this.focusedBorderColor,
      required this.disableBorderColor,
      required this.error});

  @override
  ThemeExtension<TextFieldColor> copyWith(
      {Color? fillColor,
      Color? hintColor,
      Color? focusedBorderColor,
      Color? disableBorderColor,
      Color? error}) {
    return TextFieldColor(
        fillColor: fillColor ?? this.fillColor,
        hintColor: hintColor ?? this.hintColor,
        focusedBorderColor: focusedBorderColor ?? this.focusedBorderColor,
        disableBorderColor: disableBorderColor ?? this.disableBorderColor,
        error: error ?? this.error);
  }

  @override
  ThemeExtension<TextFieldColor> lerp(
      covariant ThemeExtension<TextFieldColor>? other, double t) {
    if (other is! TextFieldColor) return this;

    return TextFieldColor(
      fillColor: Color.lerp(fillColor, other.fillColor, t) ?? fillColor,
      hintColor: Color.lerp(hintColor, other.hintColor, t) ?? hintColor,
      focusedBorderColor:
          Color.lerp(focusedBorderColor, other.focusedBorderColor, t) ??
              focusedBorderColor,
      disableBorderColor:
          Color.lerp(disableBorderColor, other.disableBorderColor, t) ??
              disableBorderColor,
      error: Color.lerp(error, other.error, t) ?? error,
    );
  }

  static final light = TextFieldColor(
    fillColor: AppColorConstants.primaryLight,
    hintColor: AppColorConstants.hintColor,
    focusedBorderColor: AppColorConstants.primaryStrokeLight,
    disableBorderColor: AppColorConstants.secondaryStrokeLight,
    error: AppColorConstants.errorLight,
  );

  static final dark = TextFieldColor(
    fillColor: AppColorConstants.primaryLight,
    hintColor: AppColorConstants.hintColor,
    focusedBorderColor: AppColorConstants.primaryStrokeDark,
    disableBorderColor: AppColorConstants.secondaryStrokeDark,
    error: AppColorConstants.errorDark,
  );
}
