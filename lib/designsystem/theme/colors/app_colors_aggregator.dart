import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/theme/utils/color_fields_mixin.dart';
import 'package:flutter_component_playground/designsystem/theme/colors/app_color_constants.dart';

part 'appbar_color.dart';
part 'background_color.dart';
part 'button_color.dart';
part 'divider_color.dart';
part 'stroke_color.dart';
part 'text_color.dart';
part 'text_field_color.dart';
part 'app_material_color.dart';

final class AppColorsAggregator extends ThemeExtension<AppColorsAggregator> {
  final AppBarColor appBarColor;
  final BackgroundColor backgroundColor;
  final ButtonColor buttonColor;
  final DividerColor dividerColor;
  final StrokeColor strokeColor;
  final TextColor textColor;
  final TextFieldColor textFieldColor;
  final AppMaterialColor materialColor;

  AppColorsAggregator._({
    required this.appBarColor,
    required this.backgroundColor,
    required this.buttonColor,
    required this.dividerColor,
    required this.strokeColor,
    required this.textColor,
    required this.textFieldColor,
    required this.materialColor,
  });

  static final lightThemeColors = AppColorsAggregator._(
    appBarColor: AppBarColor._lightThemeColor,
    backgroundColor: BackgroundColor._lightThemeColor,
    buttonColor: ButtonColor._lightThemeColor,
    dividerColor: DividerColor._lightThemeColor,
    strokeColor: StrokeColor._lightThemeColor,
    textColor: TextColor._lightThemeColor,
    textFieldColor: TextFieldColor._lightThemeColor,
    materialColor: AppMaterialColor._lightThemeColor,
  );

  static final darkThemeColor = AppColorsAggregator._(
    appBarColor: AppBarColor._darkThemeColor,
    backgroundColor: BackgroundColor._darkThemeColor,
    buttonColor: ButtonColor._darkThemeColor,
    dividerColor: DividerColor._darkThemeColor,
    strokeColor: StrokeColor._darkThemeColor,
    textColor: TextColor._darkThemeColor,
    textFieldColor: TextFieldColor._darkThemeColor,
    materialColor: AppMaterialColor._darkThemeColor,
  );

  @override
  ThemeExtension<AppColorsAggregator> copyWith({
    AppBarColor? appBarColor,
    BackgroundColor? backgroundColor,
    ButtonColor? buttonColor,
    DividerColor? dividerColor,
    StrokeColor? strokeColor,
    TextColor? textColor,
    TextFieldColor? textFieldColor,
    AppMaterialColor? materialColor,
  }) {
    return AppColorsAggregator._(
      appBarColor: appBarColor ?? this.appBarColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonColor: buttonColor ?? this.buttonColor,
      dividerColor: dividerColor ?? this.dividerColor,
      strokeColor: strokeColor ?? this.strokeColor,
      textColor: textColor ?? this.textColor,
      textFieldColor: textFieldColor ?? this.textFieldColor,
      materialColor: materialColor ?? this.materialColor,
    );
  }

  @override
  ThemeExtension<AppColorsAggregator> lerp(
    covariant ThemeExtension<AppColorsAggregator>? other,
    double t,
  ) {
    if (other is! AppColorsAggregator) return this;

    return AppColorsAggregator._(
      appBarColor:
          interpolate(appBarColor, other.appBarColor, t) ?? appBarColor,
      backgroundColor: interpolate(backgroundColor, other.backgroundColor, t) ??
          backgroundColor,
      buttonColor:
          interpolate(buttonColor, other.buttonColor, t) ?? buttonColor,
      dividerColor:
          interpolate(dividerColor, other.dividerColor, t) ?? dividerColor,
      strokeColor:
          interpolate(strokeColor, other.strokeColor, t) ?? strokeColor,
      textColor: interpolate(textColor, other.textColor, t) ?? textColor,
      textFieldColor: interpolate(textFieldColor, other.textFieldColor, t) ??
          textFieldColor,
      materialColor:
          interpolate(materialColor, other.materialColor, t) ?? materialColor,
    );
  }

  T? interpolate<T extends ThemeExtension<T>>(
    T? a,
    T? b,
    double t,
  ) {
    if (a == null || b == null) return a ?? b;

    return a.lerp(b, t) as T;
  }
}
