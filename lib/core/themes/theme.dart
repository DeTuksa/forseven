import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forseven/core/utils/hex_color.dart';

class ForsevenTheme {
  static Color primary = HexColor("#fbf9f8");
  static Color darkBlue = HexColor("#070a25");
  static Color grey = HexColor("#d6d6d6");
  static Color lightTextColor = HexColor("#f3f0ed");
  static Color darkTextColor = HexColor("#070a25");

  static ThemeData lightTheme = ThemeData(
    useMaterial3: false
  );
}