import 'package:flutter/material.dart';

mixin TextStyleFieldsMixin<T extends ThemeExtension<T>> on ThemeExtension<T> {
  /// Return the list of TextStyle fields in *this* object, in a consistent order.
  List<TextStyle> get textStyleFields;

  /// Create a new T with the given list of TextStyles in the same order as [textStyleFields].
  T createInstance(List<TextStyle> styles);

  /// Copy fields but allow partial updates.
  T copyWithList(List<TextStyle?> updatedFields) {
    final original = textStyleFields;
    assert(updatedFields.length == original.length,
        'updatedFields length must match textStyleFields length');

    final newStyles = <TextStyle>[];
    for (var i = 0; i < original.length; i++) {
      newStyles.add(updatedFields[i] ?? original[i]);
    }

    return createInstance(newStyles);
  }

  @override
  T lerp(ThemeExtension<T>? other, double t) {
    if (other == null) return this as T;

    final aStyles = textStyleFields;
    final bStyles = (other as TextStyleFieldsMixin).textStyleFields;
    assert(aStyles.length == bStyles.length,
        'Both token classes must have the same number of textStyle fields');

    final newStyles = <TextStyle>[];
    for (var i = 0; i < aStyles.length; i++) {
      newStyles.add(TextStyle.lerp(aStyles[i], bStyles[i], t) ?? aStyles[i]);
    }

    return createInstance(newStyles);
  }
}
