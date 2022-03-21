// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  TextStyle get title1 => GoogleFonts.getFont(
        'Poppins',
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Quicksand',
        color: primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Lato',
        color: secondaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF424242),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Quicksand',
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lato',
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Quicksand',
        color: Color(0xFF424242),
        fontWeight: FontWeight.w300,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF3474E0);
  Color secondaryColor = const Color(0xFFEE8B60);
  Color tertiaryColor = const Color(0xFF39D2C0);
  Color alternate = const Color(0x00000000);
  Color primaryBackground = const Color(0x00000000);
  Color secondaryBackground = const Color(0x00000000);
  Color primaryText = const Color(0x00000000);
  Color secondaryText = const Color(0x00000000);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
