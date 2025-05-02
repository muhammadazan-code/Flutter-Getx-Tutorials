import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/examplesController/example_two_controller.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  ExampleTwoController controller = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Example Two",
          ),
        ),
      ),
      body: Column(
        children: [
          Obx(() => Container(
                height: 100,
                width: 100,
                color: Colors.red.withOpacity(controller.opacity.value),
              )),
          Obx(() => Slider(value: controller.opacity.value, onChanged: (value) {
            controller.setOpacity(value);
          })),
        ],
      ),
    );
  }
}
