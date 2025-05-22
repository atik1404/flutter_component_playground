import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_component_playground/designsystem/extensions/theme_context_extension.dart';

/// A customizable text field widget that maintains consistent styling across the app.
///
/// This widget wraps Flutter's [TextFormField] with predefined styling and additional
/// functionality. It supports various customization options including border styling,
/// input formatting, and text styling.
///
/// Example usage:
/// ```dart
/// AppTextField(
///   hintText: 'Enter your name',
///   prefixIcon: Icon(Icons.person),
///   onChanged: (value) => print(value),
/// )
/// ```
class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry contentPadding;
  final bool enabled;
  final bool isFillColorEnabled;
  final FocusNode? focusNode;

  /// Creates an [AppTextField] widget.
  ///
  /// Parameters:
  /// - [controller]: Controls the text being edited.
  /// - [hintText]: Placeholder text shown when the field is empty.
  /// - [labelText]: Text that describes the input field.
  /// - [obscureText]: If true, the text will be hidden (used for passwords).
  /// - [keyboardType]: The type of keyboard to use for editing the text.
  /// - [textInputAction]: The action button to show on the keyboard.
  /// - [onChanged]: Called when the user changes the text in the field.
  /// - [inputFormatters]: Optional input formatters to change/validate input.
  /// - [maxLines]: The maximum number of lines for the text field.
  /// - [maxLength]: The maximum number of characters allowed in the text field.
  /// - [prefixIcon]: An icon to show before the input area.
  /// - [suffixIcon]: An icon to show after the input area.
  /// - [borderColor]: The color of the border. Falls back to theme color if null.
  /// - [borderRadius]: The radius of the border corners.
  /// - [contentPadding]: The padding around the content of the text field.
  /// - [enabled]: Whether the text field is interactive.
  const AppTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.inputFormatters,
    this.maxLines = 1,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.borderColor,
    this.borderRadius = 15.0,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    this.enabled = true,
    this.isFillColorEnabled = true,
    this.focusNode,
  });

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isObscured = true;

  /// Builds the widget representation of [AppTextField].
  ///
  /// This method constructs a [TextFormField] with customized styling based on the
  /// app's theme and the provided parameters. It handles:
  /// - Border styling for different states (normal, focused, error)
  /// - Text and hint styling
  /// - Input formatting and validation
  /// - Keyboard configuration
  ///
  /// Returns a styled [TextFormField] wrapped in a [SizedBox] for proper sizing.
  @override
  Widget build(BuildContext context) {
    final strokeColors = context.strokeColors;
    final materialColors = context.materialColors;
    final lineSizes = context.lineSizes;

    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      obscureText: widget.obscureText ? _isObscured : false,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      onChanged: widget.onChanged,
      inputFormatters: widget.inputFormatters,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      enabled: widget.enabled,
      onFieldSubmitted: (value) {
        if (widget.textInputAction == TextInputAction.next) {
          FocusScope.of(context).nextFocus();
        } else if (widget.textInputAction == TextInputAction.done) {
          FocusScope.of(context).unfocus();
        }
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: context.textColors.hintTextColor, // Set the hint text color
        ),
        labelText: widget.labelText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                  color: materialColors.onSurface,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : widget.suffixIcon,
        contentPadding: widget.contentPadding,
        fillColor: context.backgroundColors.primaryBackgroundColor,
        filled: widget.isFillColorEnabled,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ?? strokeColors.primaryStrokeColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ??
                strokeColors.primaryStrokeColor.withAlpha(50),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.borderColor ?? strokeColors.primaryStrokeColor,
            width: lineSizes.thin,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: materialColors.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: materialColors.error,
            width: lineSizes.thin,
          ),
        ),
        counterText: '',
      ),
    );
  }
}
