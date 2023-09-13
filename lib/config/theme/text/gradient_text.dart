// Flutter imports:
import 'package:flutter/material.dart';

class MyGradientText extends StatelessWidget {
  //
  final String text;
  final TextStyle? style;
  final Gradient gradient;

  const MyGradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
