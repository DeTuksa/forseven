import 'package:flutter/material.dart';
import 'package:forseven/core/utils/hex_color.dart';

class ForsevenTheme {
  static Color primary = HexColor("#fbf9f8");
  static Color darkBlue = HexColor("#070a25");
  static Color grey = HexColor("#d6d6d6");
  static Color lightTextColor = HexColor("#f3f0ed");
  static Color darkTextColor = HexColor("#070a25");

  static String fontFamily = "AmazonEmber";

  static ThemeData lightTheme = ThemeData(
    fontFamily: fontFamily,
    useMaterial3: false,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: darkBlue,
      surface: primary,
      onSurface: darkTextColor,
      onPrimary: lightTextColor,
      error: Colors.red,
      onError: Colors.white,
      secondary: darkBlue,
      onSecondary: lightTextColor
    ),
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 57.0, fontWeight: FontWeight.w400, color: darkTextColor),
      displayMedium: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w400, color: darkTextColor),
      displaySmall: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w400, color: darkTextColor),
      headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600, color: darkTextColor),
      headlineMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, color: darkTextColor),
      headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: darkTextColor),
      titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w400, color: darkTextColor),
      titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: darkTextColor),
      titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: darkTextColor),
      labelLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: darkTextColor),
      labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: darkTextColor),
      labelSmall: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, color: darkTextColor),
      bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: darkTextColor),
      bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: darkTextColor),
      bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: darkTextColor),
    ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(double.maxFinite, 48),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
          foregroundColor: Colors.white,
          backgroundColor: darkBlue,
          disabledBackgroundColor: grey,
          disabledForegroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(double.maxFinite, 48),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200),
              side: BorderSide(color: darkBlue)
          ),
          foregroundColor: darkBlue,
          disabledForegroundColor: grey,
          textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(double.maxFinite, 48),
          foregroundColor: darkBlue,
          disabledForegroundColor: grey,
          textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      )
  );
}