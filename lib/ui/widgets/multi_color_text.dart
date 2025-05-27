import 'package:flutter/material.dart';

class MultiColorText extends StatelessWidget {
  final List<TextSpan> textSpans;
  final TextAlign textAlign;
  final TextStyle? defaultStyle;

  const MultiColorText({
    super.key,
    required this.textSpans,
    this.textAlign = TextAlign.start,
    this.defaultStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: defaultStyle ?? DefaultTextStyle.of(context).style,
        children: textSpans,
      ),
    );
  }
}
