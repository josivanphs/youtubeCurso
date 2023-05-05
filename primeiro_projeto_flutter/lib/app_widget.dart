import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/app_controller.dart';
import 'package:primeiro_projeto_flutter/login_page.dart';

// ignore: unused_import
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: const LoginPage(),
        );
      },
    );
  }
}
