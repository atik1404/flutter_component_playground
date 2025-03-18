import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_color_constants.dart';
import 'package:flutter_component_playground/core/designsystem/theme/utils/color_fields_mixin.dart';

final class AppBarColor extends ThemeExtension<AppBarColor>
    with ColorFieldsMixin<AppBarColor> {
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondaryContainer;
  final Color onSecondaryContainer;

  AppBarColor._({
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
  });

  @override
  List<Color> get colorFields => [
        primaryContainer,
        onPrimaryContainer,
        secondaryContainer,
        onSecondaryContainer,
      ];

  @override
  ThemeExtension<AppBarColor> copyWith({
    Color? primaryContainer,
    Color? onPrimaryContainer,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
  }) {
    return copyWithList([
      primaryContainer,
      onPrimaryContainer,
      secondaryContainer,
      onSecondaryContainer,
    ]);
  }

  @override
  AppBarColor createInstance(List<Color> colors) {
    return AppBarColor._(
      primaryContainer: colors[0],
      onPrimaryContainer: colors[1],
      secondaryContainer: colors[2],
      onSecondaryContainer: colors[3],
    );
  }

  static final _lightThemeColor = AppBarColor._(
    primaryContainer: AppColorConstants.primaryContainerLight,
    onPrimaryContainer: AppColorConstants.white,
    secondaryContainer: AppColorConstants.secondaryContainerLight,
    onSecondaryContainer: AppColorConstants.black,
  );

  static final _darkThemeColor = AppBarColor._(
    primaryContainer: AppColorConstants.primaryContainerDark,
    onPrimaryContainer: AppColorConstants.white,
    secondaryContainer: AppColorConstants.secondaryContainerDark,
    onSecondaryContainer: AppColorConstants.black,
  );
}
