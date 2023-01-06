import 'package:flutter/material.dart';
import 'package:xd_adobe/screens/start_screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String appTitle = 'Flutter test';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0XFFF9F9F9),
          secondary: const Color(0XFFF9F9F9),
        ),
      ),
      home: const StartScreen(),
    );
  }
}
