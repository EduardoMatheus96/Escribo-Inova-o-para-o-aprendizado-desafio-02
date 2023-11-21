import 'package:flutter/material.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
