// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'gesture_detector.dart';

class MyFocusRemover extends StatelessWidget {
  //
  final Widget child;

  const MyFocusRemover({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MyGestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => clearFocus(context),
      child: child,
    );
  }

  void clearFocus(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
