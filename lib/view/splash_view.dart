import 'package:flutter/material.dart';
import 'package:get_x_tutorial/resources/components/general_exception_widget.dart';
import 'package:get_x_tutorial/resources/components/round_button.dart';
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
          children: [
            Center(
                child: GeneralExceptionWidget(
              onPress: () {},
            )),
            RoundButtonWidget(
                loading: false, onPress: () {}, title: 'L o g i n',height: 60,width: 200,textColor: Colors.white,)
          ],
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
