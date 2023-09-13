// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:default_project/config/values/durations.dart';

// Project imports:

class LoadingSwitcher extends StatelessWidget {
  //
  final Widget loadingState;
  final Widget idleState;
  final bool isLoading;

  const LoadingSwitcher({
    super.key,
    required this.loadingState,
    required this.idleState,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms200,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: isLoading ? loadingState : idleState,
    );
  }
}
