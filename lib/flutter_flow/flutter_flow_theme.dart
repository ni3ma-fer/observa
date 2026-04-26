import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FlutterFlowTheme {
  static late FlutterFlowTheme _instance;
  static FlutterFlowTheme of(BuildContext context) {
    _instance = FlutterFlowTheme();
    return _instance;
  }
  Color primaryBackground = const Color(0xFFF1F4F8);
  Color secondaryBackground = const Color(0xFFFFFFFF);
  Color primaryText = const Color(0xFF14181B);
  Color secondaryText = const Color(0xFF57636C);
  Color alternate = const Color(0xFFE0E3E7);
  Color primary = const Color(0xFF4B39EF);
  Color secondary = const Color(0xFF39D2C0);
  Color tertiary = const Color(0xFFEE8B60);
  Color accent1 = const Color(0x4C4B39EF);
  Color accent2 = const Color(0x4D39D2C0);
  Color accent3 = const Color(0x4DEE8B60);
  Color accent4 = const Color(0xCCFFFFFF);
  Color success = const Color(0xFF249689);
  Color warning = const Color(0xFFF9CF58);
  Color error = const Color(0xFFFF5963);
  Color info = const Color(0xFFFFFFFF);
  TextStyle headlineLarge = const TextStyle(fontSize: 32, fontWeight: FontWeight.normal);
  TextStyle headlineMedium = const TextStyle(fontSize: 24, fontWeight: FontWeight.normal);
  TextStyle headlineSmall = const TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  TextStyle titleLarge = const TextStyle(fontSize: 22, fontWeight: FontWeight.w500);
  TextStyle titleMedium = const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  TextStyle titleSmall = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  TextStyle bodyLarge = const TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
  TextStyle bodyMedium = const TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  TextStyle bodySmall = const TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
  TextStyle labelLarge = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  TextStyle labelMedium = const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
  TextStyle labelSmall = const TextStyle(fontSize: 10, fontWeight: FontWeight.w500);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
