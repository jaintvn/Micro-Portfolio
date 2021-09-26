import 'package:flutter/material.dart';
import 'main_screen.dart';

import 'config/config.dart';
import 'config/theme_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.appName,
      theme: createTheme(),
      home: const SafeArea(
          child: Scaffold(
        body: MainScreen(),
      )),
    );
  }
}
