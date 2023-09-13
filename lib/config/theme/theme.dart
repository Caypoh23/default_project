// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:default_project/config/values/colors.dart';
import 'package:default_project/config/values/fonts.dart';

// Project imports:

class MyTheme {
  //
  MyTheme._();

  //* Text Style - light

  static const TextStyle _lightAppBarTextStyle = TextStyle(
    color: MyColors.white,
    fontFamily: MyFonts.main,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle _lightHeadingTextStyle = TextStyle(
    color: MyColors.secondary,
    fontFamily: MyFonts.main,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle _lightBodyTextStyle = TextStyle(
    color: MyColors.neutral,
    fontFamily: MyFonts.main,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const IconThemeData _lightIconTheme = IconThemeData(
    color: MyColors.secondary,
    size: 24,
  );

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingTextStyle,
    bodyLarge: _lightBodyTextStyle,
  );

  //* Text Style - dark

  static final TextStyle _darkAppBarTextStyle = _lightAppBarTextStyle.copyWith(
    color: MyColors.secondary,
  );

  static final TextStyle _darkHeadingTextStyle =
      _lightHeadingTextStyle.copyWith(
    color: MyColors.secondary,
  );

  static final TextStyle _darkBodyTextStyle = _lightBodyTextStyle.copyWith(
    color: MyColors.neutralVariant1,
  );

  static final IconThemeData _darkIconTheme = _lightIconTheme.copyWith(
    color: MyColors.secondary,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkHeadingTextStyle,
    bodyLarge: _darkBodyTextStyle,
  );

  static const BottomNavigationBarThemeData _lightBottomNavigationBarThemeData =
      BottomNavigationBarThemeData(
    backgroundColor: MyColors.white,
  );

  static const BottomNavigationBarThemeData _darkBottomNavigationBarThemeData =
      BottomNavigationBarThemeData(
    backgroundColor: MyColors.black,
  );

  //& Theme light/dark

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.neutralVariant1,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: MyColors.black,
      titleTextStyle: _lightAppBarTextStyle,
      iconTheme: IconThemeData(color: MyColors.white),
    ),
    iconTheme: _lightIconTheme,
    bottomNavigationBarTheme: _lightBottomNavigationBarThemeData,
    colorScheme: const ColorScheme.light(
      primary: MyColors.primary,
      onPrimary: MyColors.primaryA50,
      secondary: MyColors.secondary,
      onSecondary: MyColors.secondaryA50,
      tertiary: MyColors.tertiary,
      onTertiary: MyColors.tertiaryA50,
      primaryContainer: MyColors.neutralVariant1,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: _lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.blackVariant,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: MyColors.black,
      titleTextStyle: _darkAppBarTextStyle,
      iconTheme: const IconThemeData(color: MyColors.white),
    ),
    iconTheme: _darkIconTheme,
    bottomNavigationBarTheme: _darkBottomNavigationBarThemeData,
    colorScheme: const ColorScheme.dark(
      primary: MyColors.primary,
      onPrimary: MyColors.primaryA50,
      secondary: MyColors.secondary,
      onSecondary: MyColors.secondaryA50,
      tertiary: MyColors.tertiary,
      onTertiary: MyColors.tertiaryA50,
      primaryContainer: MyColors.neutralVariant1,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: _darkTextTheme,
  );
}
