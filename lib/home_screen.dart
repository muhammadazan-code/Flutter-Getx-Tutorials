import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/examplesController/example_one_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Get X Tutorials"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Get.height * .3,
              width: Get.width * .3,
              color: Colors.amberAccent,
            ),
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'us'));
                  },
                  child: Text("English"),
                ),
                SizedBox(
                  width: 30,
                ),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ur', 'pk'));
                  },
                  child: Text("Urdu"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
