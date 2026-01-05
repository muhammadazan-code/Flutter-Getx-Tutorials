import 'package:get/get.dart';

class MarkFavouriteController extends GetxController {
  RxList fruitList = ['orange', 'mango', 'apple', 'banana'].obs;
  RxList tempFruitList = [].obs;

  addToFavourite(String newValue) {
    if (tempFruitList.contains(newValue)) {
      tempFruitList.remove(newValue);
    } else {
      tempFruitList.add(newValue);
    }
  }
}
