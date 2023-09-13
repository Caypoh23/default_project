// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:default_project/config/assets/icon_constants.dart';
import 'package:default_project/config/router/navigator_service.dart';
import 'package:default_project/config/theme/container/empty_container.dart';
import 'package:default_project/config/theme/icon/icon.dart';
import 'package:default_project/config/theme/text/text16/text_16_bold.dart';
import 'package:default_project/config/values/colors.dart';
import 'package:default_project/config/values/edge_insets.dart';
import 'package:default_project/config/values/system_ui_overlay_styles.dart';
import 'package:default_project/core/di/service_locator.dart';
import 'package:default_project/core/helpers/media_helper.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool canPop;
  final String title;
  final List<Widget>? actions;

  final Color backgroundColor;
  final Color textColor;

  final void Function()? onPop;

  const MyAppBar({
    super.key,
    required this.title,
    this.backgroundColor = MyColors.black,
    this.textColor = MyColors.white,
    this.canPop = true,
    this.actions,
    this.onPop,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leadingWidth: 8.0,
      title: MyText16b(
        title,
        color: textColor,
      ),
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      systemOverlayStyle: MySystemUiOverlayStyle.main,
      leading: canPop
          ? MyIcon(
              size: 28,
              icon: MyIcons.arrowLeft,
              padding: MyEdgeInsets.left16,
              onTap: onPop ?? sl<NavigatorService>().pop,
            )
          : const EmptyContainer(),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
