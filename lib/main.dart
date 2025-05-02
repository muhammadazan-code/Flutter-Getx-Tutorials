import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/home_screen.dart';
import 'package:get_x_tutorial/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'us'),
      fallbackLocale: Locale("en", "USA"),
      home: HomeScreen(),
    );
  }
}
