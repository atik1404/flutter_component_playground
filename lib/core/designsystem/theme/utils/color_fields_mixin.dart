import 'package:flutter/material.dart';

mixin ColorFieldsMixin<T extends ThemeExtension<T>> on ThemeExtension<T>{
  
  List<Color> get colorFields;

  T createInstance(List<Color> colors);

  T copyWithList(List<Color?> updatedFields) {
    final original = colorFields;
    final length = original.length;
    assert(updatedFields.length == length,
    'updatedFields length must match colorFields length');

    final newColors = <Color>[];
    for (var i = 0; i < length; i++) {
      newColors.add(updatedFields[i] ?? original[i]);
    }

    return createInstance(newColors);
  }

  @override
  T lerp(ThemeExtension<T>? other, double t) {
    if (other == null) return this as T;

    final aColors = colorFields;
    final bColors = (other as ColorFieldsMixin).colorFields;
    final length = aColors.length;

    // Lerp each color
    final lerped = <Color>[];
    for (var i = 0; i < length; i++) {
      lerped.add(Color.lerp(aColors[i], bColors[i], t) ?? aColors[i]);
    }
    
    return createInstance(lerped);
  }
}