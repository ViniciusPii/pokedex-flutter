import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_color_generate.dart';

class AppExtension {
  AppExtension._();

  //Colors
  static MaterialColor primary = AppColorGenerate.color(AppColors.neutral.value);
  static Color primaryDark = AppColorGenerate.color(primary.shade800.value);
  static Color primaryLight = AppColorGenerate.color(primary.shade200.value);
  static Color secondary = AppColorGenerate.color(primary.shade200.value);
  static Color background = AppColorGenerate.color(AppColors.white.value);

  //Text Color
  static Color textColor = AppColors.neutral.shade800;
  static Color textLightColor = AppColors.neutral.shade500;

  //Font
  static String? fontFamily = GoogleFonts.montserrat().fontFamily;
}
