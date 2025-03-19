import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/utils/text_style_fields_mixin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final class AppTypography extends ThemeExtension<AppTypography> with TextStyleFieldsMixin<AppTypography>{

  final TextStyle titleLargeRegular;
  final TextStyle titleLargeMedium;
  final TextStyle titleLargeSemiBold;
  final TextStyle titleLargeBold;

  final TextStyle titleMediumRegular;
  final TextStyle titleMedium;
  final TextStyle titleMediumSemiBold;
  final TextStyle titleMediumBold;

  final TextStyle titleSmallRegular;
  final TextStyle titleSmallMedium;
  final TextStyle titleSmallSemiBold;
  final TextStyle titleSmallBold;

  final TextStyle bodyLargeRegular;
  final TextStyle bodyLargeMedium;
  final TextStyle bodyLargeSemiBold;
  final TextStyle bodyLargeBold;

  final TextStyle bodyMediumRegular;
  final TextStyle bodyMedium;
  final TextStyle bodyMediumSemiBold;
  final TextStyle bodyMediumBold;

  final TextStyle bodySmallRegular;
  final TextStyle bodySmallMedium;
  final TextStyle bodySmallSemiBold;
  final TextStyle bodySmallBold;

  final TextStyle bodyExtraSmallRegular;
  final TextStyle bodyExtraSmallMedium;
  final TextStyle bodyExtraSmallSemiBold;
  final TextStyle bodyExtraSmallBold;

  AppTypography._({
    required this.titleLargeRegular,
    required this.titleLargeMedium,
    required this.titleLargeSemiBold,
    required this.titleLargeBold,
    required this.titleMediumRegular,
    required this.titleMedium,
    required this.titleMediumSemiBold,
    required this.titleMediumBold,
    required this.titleSmallRegular,
    required this.titleSmallMedium,
    required this.titleSmallSemiBold,
    required this.titleSmallBold,
    required this.bodyLargeRegular,
    required this.bodyLargeMedium,
    required this.bodyLargeSemiBold,
    required this.bodyLargeBold,
    required this.bodyMediumRegular,
    required this.bodyMedium,
    required this.bodyMediumSemiBold,
    required this.bodyMediumBold,
    required this.bodySmallRegular,
    required this.bodySmallMedium,
    required this.bodySmallSemiBold,
    required this.bodySmallBold,
    required this.bodyExtraSmallRegular,
    required this.bodyExtraSmallMedium,
    required this.bodyExtraSmallSemiBold,
    required this.bodyExtraSmallBold,
  });

  @override
  AppTypography createInstance(List<TextStyle> styles) {
    return AppTypography._(
      titleLargeRegular: styles[0],
      titleLargeMedium: styles[1],
      titleLargeSemiBold: styles[2],
      titleLargeBold: styles[3],
      titleMediumRegular: styles[4],
      titleMedium: styles[5],
      titleMediumSemiBold: styles[6],
      titleMediumBold: styles[7],
      titleSmallRegular: styles[8],
      titleSmallMedium: styles[9],
      titleSmallSemiBold: styles[10],
      titleSmallBold: styles[11],
      bodyLargeRegular: styles[12],
      bodyLargeMedium: styles[13],
      bodyLargeSemiBold: styles[14],
      bodyLargeBold: styles[15],
      bodyMediumRegular: styles[16],
      bodyMedium: styles[17],
      bodyMediumSemiBold: styles[18],
      bodyMediumBold: styles[19],
      bodySmallRegular: styles[20],
      bodySmallMedium: styles[21],
      bodySmallSemiBold: styles[22],
      bodySmallBold: styles[23],
      bodyExtraSmallRegular: styles[24],
      bodyExtraSmallMedium: styles[25],
      bodyExtraSmallSemiBold: styles[26],
      bodyExtraSmallBold: styles[27],
    );
  }

  @override
  List<TextStyle> get textStyleFields => [
    titleLargeRegular,titleLargeMedium,titleLargeSemiBold,titleLargeBold,
    titleMediumRegular,titleMedium,titleMediumSemiBold,titleMediumBold,
    titleSmallRegular,titleSmallMedium,titleSmallSemiBold,titleSmallBold,

    bodyLargeRegular,bodyLargeMedium,bodyLargeSemiBold,bodyLargeBold,
    bodyMediumRegular,bodyMedium,bodyMediumSemiBold,bodyMediumBold,
    bodySmallRegular,bodySmallMedium,bodySmallSemiBold,bodySmallBold,
    bodyExtraSmallRegular,bodyExtraSmallMedium,bodyExtraSmallSemiBold,bodyExtraSmallBold,
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
      titleLargeRegular,titleLargeMedium,titleLargeSemiBold,titleLargeBold,
      titleMediumRegular,titleMedium,titleMediumSemiBold,titleMediumBold,
      titleSmallRegular,titleSmallMedium,titleSmallSemiBold,titleSmallBold,

      bodyLargeRegular,bodyLargeMedium,bodyLargeSemiBold,bodyLargeBold,
      bodyMediumRegular,bodyMedium,bodyMediumSemiBold,bodyMediumBold,
      bodySmallRegular,bodySmallMedium,bodySmallSemiBold,bodySmallBold,
      bodyExtraSmallRegular,bodyExtraSmallMedium,bodyExtraSmallSemiBold,bodyExtraSmallBold,
    ]);
  }

  static final instance = AppTypography._(
    titleLargeRegular: _getTypoStyle(22, FontWeight.w400),
    titleLargeMedium: _getTypoStyle(22, FontWeight.w500),
    titleLargeSemiBold: _getTypoStyle(22, FontWeight.w600),
    titleLargeBold: _getTypoStyle(22, FontWeight.w700),
    titleMediumRegular: _getTypoStyle(20, FontWeight.w400),
    titleMedium: _getTypoStyle(20, FontWeight.w500),
    titleMediumSemiBold: _getTypoStyle(20, FontWeight.w600),
    titleMediumBold: _getTypoStyle(20, FontWeight.w700),
    titleSmallRegular: _getTypoStyle(18, FontWeight.w400),
    titleSmallMedium: _getTypoStyle(18, FontWeight.w500),
    titleSmallSemiBold: _getTypoStyle(18, FontWeight.w600),
    titleSmallBold: _getTypoStyle(18, FontWeight.w700),
    bodyLargeRegular: _getTypoStyle(16, FontWeight.w400),
    bodyLargeMedium: _getTypoStyle(16, FontWeight.w500),
    bodyLargeSemiBold: _getTypoStyle(16, FontWeight.w600),
    bodyLargeBold: _getTypoStyle(16, FontWeight.w700),
    bodyMediumRegular: _getTypoStyle(14, FontWeight.w400),
    bodyMedium: _getTypoStyle(14, FontWeight.w500),
    bodyMediumSemiBold: _getTypoStyle(14, FontWeight.w600),
    bodyMediumBold: _getTypoStyle(14, FontWeight.w700),
    bodySmallRegular: _getTypoStyle(12, FontWeight.w400),
    bodySmallMedium: _getTypoStyle(12, FontWeight.w500),
    bodySmallSemiBold: _getTypoStyle(12, FontWeight.w600),
    bodySmallBold: _getTypoStyle(12, FontWeight.w700),
    bodyExtraSmallRegular: _getTypoStyle(11, FontWeight.w400),
    bodyExtraSmallMedium:  _getTypoStyle(11, FontWeight.w500),
    bodyExtraSmallSemiBold: _getTypoStyle(11, FontWeight.w600),
    bodyExtraSmallBold: _getTypoStyle(11, FontWeight.w700),
  );

  static TextStyle _getTypoStyle(double fontSize, FontWeight fontWeight) {
    return TextStyle(
      fontFamily: "Poppins",
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      height: 1.2,
    );
  }
}