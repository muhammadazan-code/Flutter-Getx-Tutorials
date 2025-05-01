import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/home_screen.dart';
import 'package:get_x_tutorial/screen_one.dart';
import 'package:get_x_tutorial/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:const HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/screen_one", page:()=> ScreenOne()),
        GetPage(name: "/screen_two", page: ()=> ScreenTwo())
      ],
    );
  }
}
