// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'colors.dart';

class MySystemUiOverlayStyle {
  //
  MySystemUiOverlayStyle._();

  static const lightNavBar = SystemUiOverlayStyle(
    statusBarColor: MyColors.white,
    statusBarBrightness: Brightness.light,
    systemNavigationBarColor: MyColors.white,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: MyColors.transparent,
  );

  static const main = SystemUiOverlayStyle(
    statusBarColor: MyColors.black,
    statusBarBrightness: Brightness.light,
    systemStatusBarContrastEnforced: false,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.black,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: MyColors.transparent,
  );
}
