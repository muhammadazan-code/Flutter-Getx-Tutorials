import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/examplesController/mark_favourite_controller.dart';

class MarkFavourite extends StatefulWidget {
  const MarkFavourite({super.key});

  @override
  State<MarkFavourite> createState() => _MarkFavouriteState();
}

class _MarkFavouriteState extends State<MarkFavourite> {
  MarkFavouriteController controller = Get.put(MarkFavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: ListView.builder(
              itemCount: controller.fruitList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      controller.addToFavourite(
                          controller.fruitList[index].toString());
                    },
                    title: Text(controller.fruitList[index].toString()),
                    trailing: Obx(() => Icon(
                          Icons.favorite,
                          color: controller.tempFruitList.contains(
                                  controller.fruitList[index].toString())
                              ? Colors.red
                              : Colors.white,
                        )),
                  ),
                );
              })),
    );
  }
}
