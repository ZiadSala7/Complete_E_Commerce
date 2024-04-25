import 'package:e_commerce_/core/style/themes/color_extension.dart';
import 'package:e_commerce_/core/style/themes/image_extension.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  // Colors
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  // Images
  MyImages get image => Theme.of(this).extension<MyImages>()!;
  Future<dynamic> pushNamed(String routeName, Object? obj) {
    return Navigator.of(this).pushNamed(routeName, arguments: obj);
  }

  Future<dynamic> pushReplacementNamed(String routeName, Object? obj) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: obj);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, Object? obj) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
