import 'package:flutter/material.dart';
import 'package:get_x_tutorial/data/app_exception.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
         throw RequestTimeOut(message: "message");
        }),
      ),
    );
  }
}
