import 'package:flutter/material.dart';
import 'package:get_x_tutorial/resources/assets/images_assets.dart';
import 'package:get_x_tutorial/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Center(child: Image.asset(ImageAssets.splashScreenImage))],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessageCenter("message");
          Utils.toastMessage("message");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
