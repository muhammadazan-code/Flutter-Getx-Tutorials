import 'package:get/get.dart';

class ExampleThreeController extends GetxController {
  RxBool notifications = false.obs;
  // obs means observeable
  setNotification(bool newValue) {
    notifications.value = newValue;
    print(notifications.value);
  }
}
