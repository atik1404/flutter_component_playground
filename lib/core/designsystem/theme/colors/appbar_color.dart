import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/utils/color_fields_mixin.dart';

final class AppBarColor extends ThemeExtension<AppBarColor> with ColorFieldsMixin<AppBarColor>{
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondaryContainer;
  final Color onSecondaryContainer;

  AppBarColor({
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    }
  );
}