import 'package:flutter/material.dart';
import 'package:flutter_component_playground/core/designsystem/theme/utils/numeric_fields_mixin.dart';

part 'icon_size.dart';
part 'divider_size.dart';
part 'shape_radius.dart';
part 'spacing_size.dart';
part 'widget_size.dart';
part 'image_size.dart';

final class DimensionAggregator extends ThemeExtension<DimensionAggregator> {
  final IconSize icon;
  final DividerSize line;
  final ShapeRadius shape;
  final SpacingSize spacing;
  final WidgetSize widget;
  final ImageSize imageSize;

  const DimensionAggregator._({
    required this.icon,
    required this.line,
    required this.shape,
    required this.spacing,
    required this.widget,
    required this.imageSize,
  });

  @override
  DimensionAggregator copyWith({
    IconSize? icon,
    DividerSize? line,
    ShapeRadius? shape,
    SpacingSize? spacing,
    WidgetSize? widget,
    ImageSize? imageSize,
  }) {
    return DimensionAggregator._(
      icon: icon ?? this.icon,
      line: line ?? this.line,
      shape: shape ?? this.shape,
      spacing: spacing ?? this.spacing,
      widget: widget ?? this.widget,
      imageSize: imageSize ?? this.imageSize,
    );
  }

  @override
  ThemeExtension<DimensionAggregator> lerp(
      covariant ThemeExtension<DimensionAggregator>? other, double t) {
    if (other is! DimensionAggregator) return this;

    return DimensionAggregator._(
      icon: interpolate(icon, other.icon, t) ?? icon,
      line: interpolate(line, other.line, t) ?? line,
      shape: interpolate(shape, other.shape, t) ?? shape,
      spacing: interpolate(spacing, other.spacing, t) ?? spacing,
      widget: interpolate(widget, other.widget, t) ?? widget,
      imageSize: interpolate(imageSize, other.imageSize, t) ?? imageSize,
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

  static final instance = DimensionAggregator._(
    icon: IconSize._instance,
    line: DividerSize._instance,
    shape: ShapeRadius._instance,
    spacing: SpacingSize._instance,
    widget: WidgetSize._instance,
    imageSize: ImageSize._instance,
  );
}
