// Flutter imports:
import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  /// Primary
  static const primary = Color(0xFF172593);
  static const primaryA50 = Color(0x80172593);
  static const primaryA30 = Color(0x4D172593);
  static const primaryA20 = Color(0x33172593);
  static const primaryA10 = Color(0x1A172593);

  /// Secondary
  static const secondary = Color(0xFF4441b2);
  static const secondaryA50 = Color(0x804441b2);
  static const secondaryA30 = Color(0x4D4441b2);
  static const secondaryA20 = Color(0x334441b2);
  static const secondaryA10 = Color(0x1A4441b2);

  /// Tertiary
  static const tertiary = Color(0xFF35a4c1);
  static const tertiaryA50 = Color(0x8035a4c1);
  static const tertiaryA30 = Color(0x4D35a4c1);
  static const tertiaryA20 = Color(0x3335a4c1);
  static const tertiaryA10 = Color(0x1A35a4c1);

  /// White
  static const white = Color(0xFFFFFFFF);
  static const whiteA50 = Color(0x80FFFFFF);
  static const whiteA40 = Color(0x66FFFFFF);
  static const whiteA20 = Color(0x44FFFFFF);
  static const whiteA10 = Color(0x1AFFFFFF);

  /// Black
  static const black = Color(0xFF000000);
  static const blackA50 = Color(0x80000000);
  static const blackA30 = Color(0x4D000000);
  static const blackA20 = Color(0x44000000);
  static const blackA10 = Color(0x1A000000);

  /// Black
  static const blackVariant = Color(0xFF070707);
  static const blackVariantA50 = Color(0x80070707);
  static const blackVariantA30 = Color(0x4D070707);
  static const blackVariantA20 = Color(0x44070707);
  static const blackVariantA10 = Color(0x1A070707);

  /// Neutral
  static const neutral = Color(0xFFA0A0A0);
  static const neutralA50 = Color(0x80A0A0A0);
  static const neutralA30 = Color(0x4DA0A0A0);
  static const neutralA20 = Color(0x44A0A0A0);
  static const neutralA10 = Color(0x1AA0A0A0);

  /// NeutralVariant 1
  static const neutralVariant1 = Color(0xFFF4F5F7);
  static const neutralVariant1A50 = Color(0x80F4F5F7);
  static const neutralVariant1A30 = Color(0x4DF4F5F7);
  static const neutralVariant1A20 = Color(0x44F4F5F7);
  static const neutralVariant1A10 = Color(0x1AF4F5F7);

  /// NeutralVariant 2
  static const neutralVariant2 = Color(0xFFFAFAFB);
  static const neutralVariant2A50 = Color(0x80FAFAFB);
  static const neutralVariant2A30 = Color(0x4DFAFAFB);
  static const neutralVariant2A20 = Color(0x44FAFAFB);
  static const neutralVariant2A10 = Color(0x1AFAFAFB);

  //! Red
  static const red = Color(0xFFEB5757);
  static const redA50 = Color(0x80EB5757);
  static const redA30 = Color(0x4DEB5757);
  static const redA20 = Color(0x44EB5757);
  static const redA10 = Color(0x1AEB5757);

  //? Blue
  static const blue = Color(0xFF2400FF);
  static const blueA50 = Color(0x802400FF);
  static const blueA30 = Color(0x4D2400FF);
  static const blueA20 = Color(0x442400FF);
  static const blueA10 = Color(0x1A2400FF);

  //* Green
  static const green = Color(0xFF47BF33);
  static const greenA50 = Color(0x8047BF33);
  static const greenA30 = Color(0x4D47BF33);
  static const greenA20 = Color(0x4447BF33);
  static const greenA10 = Color(0x1A47BF33);

  //^ Yellow
  static const yellow = Color(0xFFFFD94A);
  static const yellowA50 = Color(0x80FFD94A);
  static const yellowA30 = Color(0x4DFFD94A);
  static const yellowA20 = Color(0x44FFD94A);
  static const yellowA10 = Color(0x1AFFD94A);

  //& Pink
  static const pink = Color(0xFFE002BF);
  static const pinkA50 = Color(0x80E002BF);
  static const pinkA30 = Color(0x4DE002BF);
  static const pinkA20 = Color(0x44E002BF);
  static const pinkA10 = Color(0x1AE002BF);

  static const pinkVarient = Color(0xFFE102C0);
  static const pinkVarientA50 = Color(0x80E102C0);
  static const pinkVarientA30 = Color(0x4DE102C0);
  static const pinkVarientA20 = Color(0x44E102C0);
  static const pinkVarientA10 = Color(0x1AE102C0);

  static const pinkLite = Color(0xFFDAAFEE);
  static const pinkLiteA50 = Color(0x80DAAFEE);
  static const pinkLiteA30 = Color(0x4DDAAFEE);
  static const pinkLiteA20 = Color(0x44DAAFEE);
  static const pinkLiteA10 = Color(0x1ADAAFEE);

  //~ Purple
  static const purple = Color(0xFF591B50);
  static const purpleA50 = Color(0x80591B50);
  static const purpleA30 = Color(0x4D591B50);
  static const purpleA20 = Color(0x44591B50);
  static const purpleA10 = Color(0x1A591B50);

  // Orange
  static const orange = Color(0xFFEB7B17);
  static const orangeA20 = Color(0x44EB7B17);

  // Other
  static const transparent = Color(0x00FFFFFF);
  static const shrimmer = Color(0xFFFAFAFB);

  static Color colorFromText(String text) {
    var hash = 0;
    for (var i = 0; i < text.length; i++) {
      hash = text.codeUnitAt(i) + ((hash << 5) - hash);
    }
    final finalHash = hash.abs() % (256 * 256 * 256);
    final red = ((finalHash & 0xFF0000) >> 16);
    final blue = ((finalHash & 0xFF00) >> 8);
    final green = ((finalHash & 0xFF));
    final color = Color.fromRGBO(red, green, blue, 1);
    return color;
  }

  /// Gradients

  /// Primary Gradient
  static const Gradient bluePinkGradient = LinearGradient(
    begin: Alignment(-1.5, -5),
    end: Alignment(1, 0),
    colors: [blue, pink],
  );

  static const Gradient pinkBlueGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [pink, blue],
  );

  static const Gradient whiteTransparentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [whiteA50, whiteA10],
  );

  static const Gradient whiteTransparentWhiteGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [whiteA50, whiteA10, whiteA50],
  );

  static const Gradient pinkYellowGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [pinkVarient, yellowA30, transparent, pinkVarient],
  );
}
