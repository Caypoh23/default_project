// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'colors.dart';

class MySystemUiOverlayStyle {
  MySystemUiOverlayStyle._();

  static const splash = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    //
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.secondary,
    systemNavigationBarDividerColor: MyColors.secondary,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const darkStatusBar = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  );

  static const lightNavBar = SystemUiOverlayStyle(
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.white,
    systemNavigationBarDividerColor: MyColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
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

  static const greyNavBar = SystemUiOverlayStyle(
    //
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.neutralVariant1,
    systemNavigationBarDividerColor: MyColors.neutralVariant1,
    systemNavigationBarIconBrightness: Brightness.dark,
  );
}
