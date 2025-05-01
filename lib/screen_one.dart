import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/screen_two.dart';

// ignore: must_be_immutable
class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key, this.name = ""});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Screen One"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(Get.arguments["name"]),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.to(ScreenTwo());
              },
              child: Text(
                "Go to screen 2",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
