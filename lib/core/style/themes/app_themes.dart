import 'package:e_commerce_/core/style/colors/dark_colors.dart';
import 'package:e_commerce_/core/style/colors/light_colors.dart';
import 'package:e_commerce_/core/style/fonts/font_family_helper.dart';
import 'package:e_commerce_/core/style/themes/color_extension.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: DarkMode.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark],
    useMaterial3: true,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 14,
        color: DarkMode.white,
        fontFamily: FontFamilyHelper.getFontFamily(),
      ),
    ),
  );
}

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: LightMode.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: DarkMode.black1,
        fontFamily: FontFamilyHelper.getFontFamily(),
      ),
    ),
  );
}
