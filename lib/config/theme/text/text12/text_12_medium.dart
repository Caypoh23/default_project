// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:default_project/config/theme/text/text.dart';

class MyText12m extends StatelessWidget {
  //
  final String data;

  final int height;

  final Color? color;

  final int? maxLines;
  final TextAlign? textAlign;
  final String? fontFamily;

  final TextDecoration decoration;

  final bool isOverflow;
  final bool toUpperCase;
  final bool toLowerCase;
  final bool capitalize;

  const MyText12m(
    this.data, {
    super.key,
    this.height = 16,
    //
    this.color,
    //
    this.maxLines,
    this.textAlign,
    this.fontFamily,
    //
    this.isOverflow = true,
    this.toUpperCase = false,
    this.toLowerCase = false,
    this.capitalize = false,
    //
    this.decoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      color: color,
      fontSize: 12,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      fontFamily: fontFamily,
      isOverflow: isOverflow,
      decoration: decoration,
      capitalize: capitalize,
      toUpperCase: toUpperCase,
      fontWeight: FontWeight.w400,
    );
  }
}
