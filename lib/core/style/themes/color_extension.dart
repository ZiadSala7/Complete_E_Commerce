import 'package:e_commerce_/core/style/colors/dark_colors.dart';
import 'package:e_commerce_/core/style/colors/light_colors.dart';
import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.mainColor,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navBarbg,
    required this.navBarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
  });

  final Color? mainColor;
  final Color? bluePinkDark;
  final Color? bluePinkLight;
  final Color? textColor;
  final Color? textFormBorder;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? containerShadow1;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? mainColor,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navBarbg,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
  }) {
    return MyColors(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  static const MyColors dark = MyColors(
    mainColor: DarkMode.mainColor,
    bluePinkDark: DarkMode.blueDark,
    bluePinkLight: DarkMode.blueLight,
    textColor: DarkMode.white,
    textFormBorder: DarkMode.blueLight,
    navBarbg: DarkMode.navBarDark,
    navBarSelectedTab: DarkMode.white,
    containerShadow1: DarkMode.black1,
    containerShadow2: DarkMode.black2,
    containerLinear1: DarkMode.black1,
    containerLinear2: DarkMode.black2,
  );

  static const MyColors light = MyColors(
    mainColor: LightMode.mainColor,
    bluePinkDark: LightMode.pinkDark,
    bluePinkLight: LightMode.pinkLight,
    textColor: LightMode.black,
    textFormBorder: LightMode.pinkLight,
    navBarbg: LightMode.mainColor,
    navBarSelectedTab: LightMode.pinkDark,
    containerShadow1: LightMode.white,
    containerShadow2: LightMode.white,
    containerLinear1: LightMode.pinkDark,
    containerLinear2: LightMode.pinkLight,
  );
}
