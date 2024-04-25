import 'package:e_commerce_/core/style/colors/dark_colors.dart';
import 'package:e_commerce_/core/style/colors/light_colors.dart';
import 'package:e_commerce_/core/style/themes/color_extension.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: DarkMode.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark],
    useMaterial3: true,
  );
}

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: LightMode.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light],
    useMaterial3: true,
  );
}
