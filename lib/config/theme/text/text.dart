// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:default_project/config/theme/shimmer/shrimmer.dart';
import 'package:default_project/config/values/colors.dart';
import 'package:default_project/config/values/fonts.dart';

class MyText extends StatefulWidget {
  //
  final String? data;

  final int height;
  final int fontSize;

  final Color? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;
  final bool toUpperCase;
  final bool toLowerCase;
  final bool capitalize;

  final FontWeight fontWeight;
  final String? fontFamily;
  final TextDecoration decoration;

  ///

  const MyText(
    this.data, {
    super.key,
    height,
    this.fontSize = 14,
    //
    this.color = MyColors.white,
    //
    this.maxLines,
    this.textAlign,
    //
    this.isOverflow = true,
    this.toUpperCase = false,
    this.toLowerCase = false,
    this.capitalize = false,
    //
    this.fontFamily = MyFonts.main,
    this.fontWeight = FontWeight.normal,
    this.decoration = TextDecoration.none,
    //
  }) : height = height ?? fontSize;

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  ///

  @override
  Widget build(BuildContext context) {
    if (widget.data == null) {
      return MyShimmer(height: widget.height.toDouble());
    }

    String displayedText = widget.data!;
    if (widget.toUpperCase) {
      displayedText = displayedText.toUpperCase();
    } else if (widget.toLowerCase) {
      displayedText = displayedText.toLowerCase();
    } else if (widget.capitalize) {
      displayedText = _capitalize(displayedText);
    }

    return Text(
      displayedText,
      style: TextStyle(
        color: widget.color,
        fontWeight: widget.fontWeight,
        decoration: widget.decoration,
        fontFamily: widget.fontFamily,
        fontSize: widget.fontSize.toDouble(),
        height: (widget.height / widget.fontSize).toDouble(),
      ),
      maxLines: widget.maxLines,
      textAlign: widget.textAlign,
      overflow: widget.isOverflow ? TextOverflow.ellipsis : null,
    );
  }

  String _capitalize(String text) {
    if (text.isEmpty) return '';
    return text[0].toUpperCase() + text.substring(1);
  }
}
