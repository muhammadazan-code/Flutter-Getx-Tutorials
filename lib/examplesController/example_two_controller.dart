import 'package:get/get.dart';

class ExampleTwoController extends GetxController {
  RxDouble opacity = .3.obs;

  setOpacity(double newValue){
    opacity.value = newValue;
  }
}