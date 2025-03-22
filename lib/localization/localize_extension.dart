import 'package:flutter/material.dart';
import 'package:flutter_component_playground/localization/generated/l10n.dart';


extension LocalizeExtension on BuildContext {
  LocalizedStrings get getString => LocalizedStrings.of(this);
}