import 'package:flutter/material.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';

class AppCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Widget labelText;

  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: context.materialColors.primary,
          checkColor: context.materialColors.onPrimary,
        ),
        Flexible(
          child: labelText,
        ),
      ],
    );
  }
}
