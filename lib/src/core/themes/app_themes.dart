// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    // set theme here for Dev
    return LightModeTheme();
    // return DarkModeTheme();
    //! Todo: remove on release !

    // ignore: dead_code
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => whiteColor;
  @Deprecated('Use borderGrey instead')
  Color get borderGreyColor => borderGrey;

  late final Color primary;
  late final Color whiteColor;
  late final Color grey;
  late final Color borderGrey;
  late final Color grey9797;
  late final Color lightBlue;
  late final Color primaryText;
  late final Color secondaryText;
  late final Color primaryBackground;
  late final Color secondaryBackground;
  late final Color primaryBusinessBackground;
  late final Color secondaryBusinessBackground;
  late final Color accent1;
  late final Color accent2;
  late final Color accent3;
  late final Color accent4;
  late final Color online;
  late final Color success;
  late final Color warning;
  late final Color error;
  late final Color info;

  late final Color borderColor;

  late final Color white;
  late final Color cultured;
  late final Color underProgress;

  late final Color redApple;
  late final Color darkRed;
  late final Color brightBlue;
  late final Color celadon;

  late final Color disabledBlue;
  late final Color turquoise;
  late final Color gunmetal;
  late final Color grayIcon;
  late final Color darkText;
  late final Color grayButton;
  late final Color dark600;
  late final Color gray600;
  late final Color lineGray;
  late final Color primaryBtnText;
  late final Color lineColor;
  late final Color customColor1;
  late final Color customColor3;
  late final Color customColor4;
  late final Color dividerColor;

  late final Color homeCardBlue;
  late final Color homeCardPink;
  late final Color homeCardGreen;
  late final Color homeCardOrange;
  late final Color boxColors5;
  late final Color boxColors6;
  late final Color boxColors7;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  TextStyle get displayLargeSecondary => typography.displayLargeSecondary;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  TextStyle get displayMediumSecondary => typography.displayMediumSecondary;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  TextStyle get displaySmallWhite30 => typography.displaySmallWhite30;
  TextStyle get displaySmallSecondary => typography.displaySmallSecondary;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  TextStyle get headlineLargeSecondary => typography.headlineLargeSecondary;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  TextStyle get headlineMediumSecondary => typography.headlineMediumSecondary;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  TextStyle get headlineSmallSecondary => typography.headlineSmallSecondary;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  TextStyle get titleLargeSecondary => typography.titleLargeSecondary;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  TextStyle get titleMediumSecondary => typography.titleMediumSecondary;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  TextStyle get titleSmallSecondary => typography.titleSmallSecondary;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  TextStyle get labelLargeSecondary => typography.labelLargeSecondary;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  TextStyle get labelMediumSecondary => typography.labelMediumSecondary;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  TextStyle get labelSmallSecondary => typography.labelSmallSecondary;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  TextStyle get bodyLargeSecondary => typography.bodyLargeSecondary;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  TextStyle get bodyMediumSecondary => typography.bodyMediumSecondary;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;
  TextStyle get bodySmallSecondary => typography.bodySmallSecondary;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @override
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @override
  @Deprecated('Use secondary instead')
  Color get secondaryColor => whiteColor;
  @override
  @Deprecated('Use borderGrey instead')
  Color get borderGreyColor => borderGrey;

  @override
  final Color primary = const Color(0xff1A53A5);
  @override
  final Color whiteColor = const Color(0xFFFFFFFF);

  @override
  final Color grey = const Color(0xffD1CFCF);

  @override
  final Color borderGrey = const Color(0xffDCDCDC);
  @override
  final Color grey9797 = const Color(0xff979797);

  @override
  final Color primaryText = const Color(0xff1B1F25);
  @override
  final Color secondaryText = const Color(0xff79797A);
  @override
  final Color primaryBackground = const Color(0xffF1F4F8);
  @override
  final Color secondaryBackground = const Color(0xffFFFFFF);
  @override
  final Color primaryBusinessBackground = const Color(0xFFededed);
  @override
  final Color secondaryBusinessBackground = const Color(0xffFFFFFF);
  // 0xFFededed
  @override
  final Color accent1 = const Color(0xFF616161);

  @override
  final Color accent2 = const Color(0xFF757575);
  @override
  final Color accent3 = const Color(0xFFE0E0E0);
  @override
  final Color accent4 = const Color(0xFFEEEEEE);
  @override
  final Color online = const Color(0xFF01E195);
  @override
  final Color success = const Color(0xFF04A24C);
  @override
  final Color warning = const Color(0xFFFCDC0C);
  @override
  final Color error = const Color(0xFFE21C3D);
  @override
  final Color info = const Color(0xFF1C4494);

  @override
  final Color borderColor = const Color(0xFFE4D9D9);

  @override
  final Color white = Colors.white;

  @override
  final Color underProgress = const Color(0xFFE98C00);

  @override
  final Color cultured = const Color(0xFFF1F4F8);
  @override
  final Color redApple = const Color(0xffDB0A0A);
  @override
  final Color darkRed = const Color(0xffAE1E23);
  @override
  final Color disabledBlue = const Color(0xFFA3BADB);
  @override
  final Color turquoise = const Color(0xFF39D2C0);
  @override
  final Color gunmetal = const Color(0xFF262D34);
  @override
  final Color brightBlue = const Color(0xFFEDF5FF);
  @override
  final Color grayIcon = const Color(0xFF95A1AC);
  @override
  final Color grayButton = const Color(0xFF95A1AC);
  @override
  final Color darkText = const Color(0xFF1E2429);
  @override
  final Color lightBlue = const Color(0xffEDF5FF);
  @override
  final Color dark600 = const Color(0xFF14181B);
  @override
  final Color gray600 = const Color(0xFF57636C);
  @override
  final Color lineGray = const Color(0xFFE1EDF9);
  @override
  final Color primaryBtnText = const Color(0xFFFFFFFF);
  @override
  final Color lineColor = const Color(0xFFE0E3E7);
  @override
  final Color customColor1 = const Color(0xffF89225);
  @override
  final Color customColor3 = const Color(0xff4DC3D0);
  @override
  final Color customColor4 = const Color(0xff283E64);
  @override
  final Color dividerColor = const Color(0xFF565656);

  @override
  final Color homeCardBlue = const Color(0xff75B6D2);
  @override
  final Color homeCardPink = const Color(0xffE491D2);
  @override
  final Color homeCardGreen = const Color(0xff7DB184);
  @override
  final Color homeCardOrange = const Color(0xffDDAC98);
  @override
  final Color boxColors5 = const Color(0xFFF2CC8F);
  @override
  final Color boxColors6 = const Color.fromARGB(255, 176, 201, 119);
  @override
  final Color boxColors7 = const Color(0xFF8B4FAD);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  TextStyle get displayLargeSecondary;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  TextStyle get displayMediumSecondary;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  TextStyle get displaySmallWhite30;
  TextStyle get displaySmallSecondary;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  TextStyle get headlineLargeSecondary;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  TextStyle get headlineMediumSecondary;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  TextStyle get headlineSmallSecondary;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  TextStyle get titleLargeSecondary;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  TextStyle get titleMediumSecondary;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  TextStyle get titleSmallSecondary;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  TextStyle get labelLargeSecondary;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  TextStyle get labelMediumSecondary;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  TextStyle get labelSmallSecondary;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  TextStyle get bodyLargeSecondary;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  TextStyle get bodyMediumSecondary;
  String get bodySmallFamily;
  TextStyle get bodySmall;
  TextStyle get bodySmallSecondary;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  @override
  String get displayLargeFamily => 'Readex Pro';
  @override
  TextStyle get displayLarge => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  @override
  TextStyle get displayLargeSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  @override
  String get displayMediumFamily => 'Readex Pro';
  @override
  TextStyle get displayMedium => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  @override
  TextStyle get displayMediumSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  @override
  String get displaySmallFamily => 'Urbanist';
  @override
  TextStyle get displaySmall => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  @override
  TextStyle get displaySmallWhite30 => TextStyle(
        color: theme.white,
        fontWeight: FontWeight.w600,
        fontSize: 30.0,
      );
  @override
  TextStyle get displaySmallSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  @override
  String get headlineLargeFamily => 'Readex Pro';
  @override
  TextStyle get headlineLarge => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  @override
  TextStyle get headlineLargeSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  @override
  String get headlineMediumFamily => 'Urbanist';
  @override
  TextStyle get headlineMedium => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  @override
  TextStyle get headlineMediumSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  @override
  String get headlineSmallFamily => 'Urbanist';
  @override
  TextStyle get headlineSmall => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );
  @override
  TextStyle get headlineSmallSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );
  @override
  String get titleLargeFamily => 'Readex Pro';
  @override
  TextStyle get titleLarge => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  @override
  TextStyle get titleLargeSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  @override
  String get titleMediumFamily => 'Urbanist';
  @override
  TextStyle get titleMedium => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  @override
  TextStyle get titleMediumSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  @override
  String get titleSmallFamily => 'Urbanist';
  @override
  TextStyle get titleSmall => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  @override
  TextStyle get titleSmallSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  @override
  String get labelLargeFamily => 'Readex Pro';
  @override
  TextStyle get labelLarge => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  @override
  TextStyle get labelLargeSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  @override
  String get labelMediumFamily => 'Readex Pro';
  @override
  TextStyle get labelMedium => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  @override
  TextStyle get labelMediumSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  @override
  String get labelSmallFamily => 'Readex Pro';
  @override
  TextStyle get labelSmall => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  @override
  TextStyle get labelSmallSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  @override
  String get bodyLargeFamily => 'Readex Pro';
  @override
  TextStyle get bodyLarge => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
      );
  @override
  TextStyle get bodyLargeSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  @override
  String get bodyMediumFamily => 'Urbanist';
  @override
  TextStyle get bodyMedium => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w700,
        fontSize: 16.0,
      );
  @override
  TextStyle get bodyMediumSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  @override
  String get bodySmallFamily => 'Urbanist';
  @override
  TextStyle get bodySmall => TextStyle(
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
      );
  @override
  TextStyle get bodySmallSecondary => TextStyle(
        color: theme.secondaryText,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @override
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @override
  @Deprecated('Use secondary instead')
  Color get secondaryColor => whiteColor;
  @override
  @Deprecated('Use borderGrey instead')
  Color get borderGreyColor => borderGrey;

  @override
  final Color primary = const Color(0xFFFFFFFF);
  @override
  final Color whiteColor = const Color(0xFF14181B);
  @override
  final Color grey = const Color(0xffD1CFCF);
  @override
  final Color borderGrey = const Color(0xFFFFFFFF);

  @override
  final Color grey9797 = const Color(0xff979797);

  @override
  final Color lightBlue = const Color(0xffEDF5FF);

  @override
  final Color primaryText = const Color(0xFFFFFFFF);
  @override
  final Color secondaryText = const Color(0xff79797A);

  @override
  final Color primaryBackground = const Color(0xFF1E2429);
  @override
  final Color secondaryBackground = const Color(0xFF14181B);
  @override
  final Color primaryBusinessBackground = const Color(0xffF1F4F8);
  @override
  final Color secondaryBusinessBackground = const Color(0xffFFFFFF);

  @override
  final Color accent1 = const Color(0xFFEEEEEE);
  @override
  final Color accent2 = const Color(0xFFE0E0E0);
  @override
  final Color accent3 = const Color(0xFF757575);
  @override
  final Color accent4 = const Color(0xFF616161);
  @override
  final Color online = const Color(0xFF01E195);
  @override
  final Color success = const Color(0xFF04A24C);
  @override
  final Color warning = const Color(0xFFFCDC0C);
  @override
  final Color error = const Color(0xFFE21C3D);
  @override
  final Color info = const Color(0xFF1C4494);

  @override
  final Color borderColor = const Color(0xFFE4D9D9);

  @override
  final Color white = Colors.white;
  @override
  final Color underProgress = const Color(0xFFE98C00);
  @override
  final Color cultured = const Color(0xFFF1F4F8);
  @override
  final Color redApple = const Color(0xffDB0A0A);
  @override
  final Color darkRed = const Color(0xffAE1E23);
  @override
  final Color disabledBlue = const Color(0xFFA3BADB);
  @override
  final Color turquoise = const Color(0xFF39D2C0);
  @override
  final Color gunmetal = const Color(0xFF262D34);
  @override
  final Color brightBlue = const Color(0xFFEDF5FF);
  @override
  final Color grayIcon = const Color(0xFF95A1AC);
  @override
  final Color grayButton = const Color(0xFF95A1AC);
  @override
  final Color darkText = const Color(0xFFFFFFFF);

  @override
  final Color dark600 = const Color(0xFF14181B);
  @override
  final Color gray600 = const Color(0xFF57636C);
  @override
  final Color lineGray = const Color(0xFF262D34);

  @override
  final Color primaryBtnText = const Color(0xFFFFFFFF);
  @override
  final Color lineColor = const Color(0xFF22282F);
  @override
  final Color homeCardBlue = const Color(0xff75B6D2);
  @override
  final Color homeCardPink = const Color(0xffE491D2);
  @override
  final Color homeCardGreen = const Color(0xff7DB184);
  @override
  final Color homeCardOrange = const Color(0xffDDAC98);
  @override
  final Color boxColors5 = const Color(0xFFF2CC8F);
  @override
  final Color boxColors6 = const Color.fromARGB(255, 176, 201, 119);
  @override
  final Color boxColors7 = const Color.fromARGB(255, 169, 112, 194);
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
          ? TextStyle(
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
