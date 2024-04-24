import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
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
