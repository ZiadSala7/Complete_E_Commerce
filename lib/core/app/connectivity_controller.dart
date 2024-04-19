import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  // Singelton design pattern
  ConnectivityController._();
  static final ConnectivityController instance = ConnectivityController._();

  // Value Notifier instead of setState
  ValueNotifier<bool> checkConnection = ValueNotifier(true);

  // To check connectivity with network
  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isConnected(result);
    Connectivity().onConnectivityChanged.listen(isConnected);
  }

  bool isConnected(List<ConnectivityResult>? result) {
    if (result!.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      checkConnection.value = true;
      return true;
    } else {
      checkConnection.value = false;
      return false;
    }
  }
}
