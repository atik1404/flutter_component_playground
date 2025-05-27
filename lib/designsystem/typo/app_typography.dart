import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/theme/utils/text_style_fields_mixin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final class AppTypography extends ThemeExtension<AppTypography>
    with TextStyleFieldsMixin<AppTypography> {
  final TextStyle titleLargeRegular;
  final TextStyle titleLargeMedium;
  final TextStyle titleLargeSemiBold;
  final TextStyle titleLargeBold;
  final TextStyle titleLargeLight;

  final TextStyle titleMediumRegular;
  final TextStyle titleMedium;
  final TextStyle titleMediumSemiBold;
  final TextStyle titleMediumBold;
  final TextStyle titleMediumLight;

  final TextStyle titleSmallRegular;
  final TextStyle titleSmallMedium;
  final TextStyle titleSmallSemiBold;
  final TextStyle titleSmallBold;
  final TextStyle titleSmallLight;

  final TextStyle bodyLargeRegular;
  final TextStyle bodyLargeMedium;
  final TextStyle bodyLargeSemiBold;
  final TextStyle bodyLargeBold;
  final TextStyle bodyLargeLight;

  final TextStyle bodyMediumRegular;
  final TextStyle bodyMedium;
  final TextStyle bodyMediumSemiBold;
  final TextStyle bodyMediumBold;
  final TextStyle bodyMediumLight;

  final TextStyle bodySmallRegular;
  final TextStyle bodySmallMedium;
  final TextStyle bodySmallSemiBold;
  final TextStyle bodySmallBold;
  final TextStyle bodySmallLight;

  final TextStyle bodyExtraSmallRegular;
  final TextStyle bodyExtraSmallMedium;
  final TextStyle bodyExtraSmallSemiBold;
  final TextStyle bodyExtraSmallBold;
  final TextStyle bodyExtraSmallLight;

  AppTypography._({
    required this.titleLargeRegular,
    required this.titleLargeMedium,
    required this.titleLargeSemiBold,
    required this.titleLargeBold,
    required this.titleLargeLight,
    required this.titleMediumRegular,
    required this.titleMedium,
    required this.titleMediumSemiBold,
    required this.titleMediumBold,
    required this.titleMediumLight,
    required this.titleSmallRegular,
    required this.titleSmallMedium,
    required this.titleSmallSemiBold,
    required this.titleSmallBold,
    required this.titleSmallLight,
    required this.bodyLargeRegular,
    required this.bodyLargeMedium,
    required this.bodyLargeSemiBold,
    required this.bodyLargeBold,
    required this.bodyLargeLight,
    required this.bodyMediumRegular,
    required this.bodyMedium,
    required this.bodyMediumSemiBold,
    required this.bodyMediumBold,
    required this.bodyMediumLight,
    required this.bodySmallRegular,
    required this.bodySmallMedium,
    required this.bodySmallSemiBold,
    required this.bodySmallBold,
    required this.bodySmallLight,
    required this.bodyExtraSmallRegular,
    required this.bodyExtraSmallMedium,
    required this.bodyExtraSmallSemiBold,
    required this.bodyExtraSmallBold,
    required this.bodyExtraSmallLight,
  });

  @override
  AppTypography createInstance(List<TextStyle> styles) {
    return AppTypography._(
      titleLargeRegular: styles[0],
      titleLargeMedium: styles[1],
      titleLargeSemiBold: styles[2],
      titleLargeBold: styles[3],
      titleLargeLight: styles[4],
      titleMediumRegular: styles[5],
      titleMedium: styles[6],
      titleMediumSemiBold: styles[7],
      titleMediumBold: styles[8],
      titleMediumLight: styles[9],
      titleSmallRegular: styles[10],
      titleSmallMedium: styles[11],
      titleSmallSemiBold: styles[12],
      titleSmallBold: styles[13],
      titleSmallLight: styles[14],
      bodyLargeRegular: styles[15],
      bodyLargeMedium: styles[16],
      bodyLargeSemiBold: styles[17],
      bodyLargeBold: styles[18],
      bodyLargeLight: styles[19],
      bodyMediumRegular: styles[20],
      bodyMedium: styles[21],
      bodyMediumSemiBold: styles[22],
      bodyMediumBold: styles[23],
      bodyMediumLight: styles[24],
      bodySmallRegular: styles[25],
      bodySmallMedium: styles[26],
      bodySmallSemiBold: styles[27],
      bodySmallBold: styles[28],
      bodySmallLight: styles[29],
      bodyExtraSmallRegular: styles[30],
      bodyExtraSmallMedium: styles[31],
      bodyExtraSmallSemiBold: styles[32],
      bodyExtraSmallBold: styles[33],
      bodyExtraSmallLight: styles[34],
    );
  }

  @override
  List<TextStyle> get textStyleFields => [
        titleLargeRegular,
        titleLargeMedium,
        titleLargeSemiBold,
        titleLargeBold,
        titleMediumRegular,
        titleMedium,
        titleMediumSemiBold,
        titleMediumBold,
        titleSmallRegular,
        titleSmallMedium,
        titleSmallSemiBold,
        titleSmallBold,
        bodyLargeRegular,
        bodyLargeMedium,
        bodyLargeSemiBold,
        bodyLargeBold,
        bodyMediumRegular,
        bodyMedium,
        bodyMediumSemiBold,
        bodyMediumBold,
        bodySmallRegular,
        bodySmallMedium,
        bodySmallSemiBold,
        bodySmallBold,
        bodyExtraSmallRegular,
        bodyExtraSmallMedium,
        bodyExtraSmallSemiBold,
        bodyExtraSmallBold,
      ];

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? titleLargeRegular,
    TextStyle? titleLargeMedium,
    TextStyle? titleLargeSemiBold,
    TextStyle? titleLargeBold,
    TextStyle? titleMediumRegular,
    TextStyle? titleMedium,
    TextStyle? titleMediumSemiBold,
    TextStyle? titleMediumBold,
    TextStyle? titleSmallRegular,
    TextStyle? titleSmallMedium,
    TextStyle? titleSmallSemiBold,
    TextStyle? titleSmallBold,
    TextStyle? bodyLargeRegular,
    TextStyle? bodyLargeMedium,
    TextStyle? bodyLargeSemiBold,
    TextStyle? bodyLargeBold,
    TextStyle? bodyMediumRegular,
    TextStyle? bodyMedium,
    TextStyle? bodyMediumSemiBold,
    TextStyle? bodyMediumBold,
    TextStyle? bodySmallRegular,
    TextStyle? bodySmallMedium,
    TextStyle? bodySmallSemiBold,
    TextStyle? bodySmallBold,
    TextStyle? bodyExtraSmallRegular,
    TextStyle? bodyExtraSmallMedium,
    TextStyle? bodyExtraSmallSemiBold,
    TextStyle? bodyExtraSmallBold,
  }) {
    return copyWithList([
      titleLargeRegular,
      titleLargeMedium,
      titleLargeSemiBold,
      titleLargeBold,
      titleMediumRegular,
      titleMedium,
      titleMediumSemiBold,
      titleMediumBold,
      titleSmallRegular,
      titleSmallMedium,
      titleSmallSemiBold,
      titleSmallBold,
      bodyLargeRegular,
      bodyLargeMedium,
      bodyLargeSemiBold,
      bodyLargeBold,
      bodyMediumRegular,
      bodyMedium,
      bodyMediumSemiBold,
      bodyMediumBold,
      bodySmallRegular,
      bodySmallMedium,
      bodySmallSemiBold,
      bodySmallBold,
      bodyExtraSmallRegular,
      bodyExtraSmallMedium,
      bodyExtraSmallSemiBold,
      bodyExtraSmallBold,
    ]);
  }

  static final instance = AppTypography._(
    titleLargeRegular: _getTypoStyle(22, FontWeight.w400),
    titleLargeMedium: _getTypoStyle(22, FontWeight.w500),
    titleLargeSemiBold: _getTypoStyle(22, FontWeight.w600),
    titleLargeBold: _getTypoStyle(22, FontWeight.w700),
    titleLargeLight: _getTypoStyle(22, FontWeight.w300),
    titleMediumRegular: _getTypoStyle(20, FontWeight.w400),
    titleMedium: _getTypoStyle(20, FontWeight.w500),
    titleMediumSemiBold: _getTypoStyle(20, FontWeight.w600),
    titleMediumBold: _getTypoStyle(20, FontWeight.w700),
    titleMediumLight: _getTypoStyle(20, FontWeight.w300),
    titleSmallRegular: _getTypoStyle(18, FontWeight.w400),
    titleSmallMedium: _getTypoStyle(18, FontWeight.w500),
    titleSmallSemiBold: _getTypoStyle(18, FontWeight.w600),
    titleSmallBold: _getTypoStyle(18, FontWeight.w700),
    titleSmallLight: _getTypoStyle(18, FontWeight.w300),
    bodyLargeRegular: _getTypoStyle(16, FontWeight.w400),
    bodyLargeMedium: _getTypoStyle(16, FontWeight.w500),
    bodyLargeSemiBold: _getTypoStyle(16, FontWeight.w600),
    bodyLargeBold: _getTypoStyle(16, FontWeight.w700),
    bodyLargeLight: _getTypoStyle(16, FontWeight.w300),
    bodyMediumRegular: _getTypoStyle(14, FontWeight.w400),
    bodyMedium: _getTypoStyle(14, FontWeight.w500),
    bodyMediumSemiBold: _getTypoStyle(14, FontWeight.w600),
    bodyMediumBold: _getTypoStyle(14, FontWeight.w700),
    bodyMediumLight: _getTypoStyle(14, FontWeight.w300),
    bodySmallRegular: _getTypoStyle(12, FontWeight.w400),
    bodySmallMedium: _getTypoStyle(12, FontWeight.w500),
    bodySmallSemiBold: _getTypoStyle(12, FontWeight.w600),
    bodySmallBold: _getTypoStyle(12, FontWeight.w700),
    bodySmallLight: _getTypoStyle(12, FontWeight.w300),
    bodyExtraSmallRegular: _getTypoStyle(11, FontWeight.w400),
    bodyExtraSmallMedium: _getTypoStyle(11, FontWeight.w500),
    bodyExtraSmallSemiBold: _getTypoStyle(11, FontWeight.w600),
    bodyExtraSmallBold: _getTypoStyle(11, FontWeight.w700),
    bodyExtraSmallLight: _getTypoStyle(11, FontWeight.w300),
  );

  static TextStyle _getTypoStyle(double fontSize, FontWeight fontWeight) {
    return TextStyle(
      fontFamily: "Roboto",
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      height: 1.2,
    );
  }
}
