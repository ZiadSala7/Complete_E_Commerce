import 'package:e_commerce_/core/app/connectivity_controller.dart';
import 'package:e_commerce_/core/app/env.variables.dart';
import 'package:e_commerce_/core/common/screens/no_network_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  // Singelton
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  // To make your app stands up only
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.checkConnection,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(),
            builder: (context, widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return const Center(child: Text('Hello'));
                  },
                ),
              );
            },
          );
        } else {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(),
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
