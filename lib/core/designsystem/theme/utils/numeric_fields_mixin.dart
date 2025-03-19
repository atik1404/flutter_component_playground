import 'package:flutter/material.dart';

mixin NumericFieldsMixin<T extends ThemeExtension<T>> on ThemeExtension<T> {
  /// Return the list of double fields in *this* object, in a consistent order.
  List<double> get numericFields;

  /// Create a new T with the given list of doubles in the same order as [numericFields].
  T createInstance(List<double> values);

  /// Copy fields but allow partial updates.
  T copyWithList(List<double?> updatedFields) {
    final original = numericFields;
    assert(updatedFields.length == original.length,
    'updatedFields length must match numericFields length');

    final newValues = <double>[];
    for (var i = 0; i < original.length; i++) {
      newValues.add(updatedFields[i] ?? original[i]);
    }
    
    return createInstance(newValues);
  }

  @override
  T lerp(ThemeExtension<T>? other, double t) {
    if (other == null) return this as T;

    final aValues = numericFields;
    final bValues = (other as NumericFieldsMixin).numericFields;
    assert(aValues.length == bValues.length,
    'Both token classes must have the same number of numeric fields');

    final newValues = <double>[];
    for (var i = 0; i < aValues.length; i++) {
      newValues.add(_lerpDouble(aValues[i], bValues[i], t));
    }

    return createInstance(newValues);
  }

  double _lerpDouble(double a, double b, double t) {
    return a + (b - a) * t;
  }
}