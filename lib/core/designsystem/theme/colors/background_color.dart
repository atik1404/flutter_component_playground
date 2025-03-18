import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/utils/color_fields_mixin.dart';

final class BackgroundColor extends ThemeExtension<BackgroundColor>
    with ColorFieldsMixin<BackgroundColor> {
  final Color primaryBackgroundColor;
  final Color secondaryBackgroundColor;

  BackgroundColor._({
    required this.primaryBackgroundColor,
    required this.secondaryBackgroundColor,
  });

  @override
  List<Color> get colorFields =>
      [primaryBackgroundColor, secondaryBackgroundColor];

  @override
  ThemeExtension<BackgroundColor> copyWith({
    Color? primaryBackgroundColor,
    Color? secondaryBackgroundColor,
  }) {
    return copyWithList([
      primaryBackgroundColor,
      secondaryBackgroundColor,
    ]);
  }

  @override
  BackgroundColor createInstance(List<Color> colors) {
    return BackgroundColor._(
      primaryBackgroundColor: colors[0],
      secondaryBackgroundColor: colors[1],
    );
  }

  static final _lightThemeColor = BackgroundColor._(
    primaryBackgroundColor: Color(0xFFFFFFFF),
    secondaryBackgroundColor: Color(0xFFF5F5F5),
  );

  static final _darkThemeColor = BackgroundColor._(
    primaryBackgroundColor: Color(0xFFFFFFFF),
    secondaryBackgroundColor: Color(0xFFF5F5F5),
  );
}
