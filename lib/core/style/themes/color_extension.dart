import 'package:e_commerce_/core/style/colors/dark_colors.dart';
import 'package:e_commerce_/core/style/colors/light_colors.dart';
import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({required this.mainColor});
  final Color mainColor;

  @override
  ThemeExtension<MyColors> copyWith({Color? mainColor}) {
    return MyColors(mainColor: mainColor!);
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    } else {
      return MyColors(mainColor: mainColor);
    }
  }

  static const MyColors dark = MyColors(mainColor: DarkMode.mainColor);
  static const MyColors light = MyColors(mainColor: LightMode.mainColor);
}
