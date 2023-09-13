// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:default_project/config/theme/inkwell/inkwell.dart';
import 'package:default_project/config/values/border_radius.dart';
import 'package:default_project/config/values/colors.dart';
import 'package:default_project/config/values/edge_insets.dart';

class MyIconButton extends StatelessWidget {
  //
  final void Function() onTap;
  final Widget child;

  const MyIconButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyInkWell(
          color: MyColors.purple,
          borderRadius: MyBorderRadius.allRounded100,
          padding: MyEdgeInsets.all8,
          onTap: onTap,
          child: child,
        ),
      ],
    );
  }
}
