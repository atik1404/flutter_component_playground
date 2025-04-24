import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/dimensions/dimension_aggregator.dart';
import 'package:flutter_component_playground/core/designsystem/theme/colors/app_colors_aggregator.dart';
import 'package:flutter_component_playground/core/designsystem/typo/app_typography.dart';

part 'theme_data_extension.dart';

extension ThemeContextExtension on BuildContext {
  AppColorsAggregator get _colorTokens => Theme.of(this)._themeColors;
  AppMaterialColor get materialColors => _colorTokens.materialColor;
  TextColor get textColors => _colorTokens.textColor;
  TextFieldColor get textFieldColors => _colorTokens.textFieldColor;
  BackgroundColor get backgroundColors => _colorTokens.backgroundColor;
  ButtonColor get buttonColors => _colorTokens.buttonColor;
  AppBarColor get appBarColors => _colorTokens.appBarColor;
  StrokeColor get strokeColors => _colorTokens.strokeColor;
  AppTypography get typography => Theme.of(this)._typography;
  DimensionAggregator get _dimensions => Theme.of(this)._dimensions;
  IconSize get iconSizes => _dimensions.icon;
  ImageSize get imageSizes => _dimensions.imageSize;
  DividerSize get lineSizes => _dimensions.line;
  ShapeRadius get shapeRadius => _dimensions.shape;
  SpacingSize get spacingSizes => _dimensions.spacing;
  WidgetSize get widgetSizes => _dimensions.widget;
}
