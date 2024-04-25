import 'package:e_commerce_/core/style/colors/dark_colors.dart';
import 'package:e_commerce_/core/style/colors/light_colors.dart';
import 'package:e_commerce_/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  const MyImages({required this.image});
  final String image;

  @override
  ThemeExtension<MyImages> copyWith({String? image}) {
    return MyImages(image: image!);
  }

  @override
  ThemeExtension<MyImages> lerp(
      covariant ThemeExtension<MyImages>? other, double t) {
    if (other is! MyImages) {
      return this;
    } else {
      return MyImages(image: image);
    }
  }

  static const MyImages dark = MyImages(image: AppImages.darkMode);
  static const MyImages light = MyImages(image: AppImages.lightMode);
}
