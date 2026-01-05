import 'dart:async';

import 'package:get/get.dart';
import 'package:get_x_tutorial/resources/routes/routes_names.dart';
import 'package:get_x_tutorial/view_models/controller/userPreference/user_preference_view_model.dart';

class SplashServices {
  UserPreferenceModel sp = UserPreferenceModel();
  void isLogin() {
    sp.getUser().then((value) {
      if (value.isLogin == false || value.isLogin == null) {
        Timer(Duration(seconds: 5), () {
          Get.toNamed(RoutesNames.loginScreen);
        });
      } else {
        Timer(Duration(seconds: 5), () {
          Get.toNamed(RoutesNames.homeScreen);
        });
      }
    }).onError((error, stackTrace) {
      Get.snackbar("Error", "User Not Found");
    });
  }
}
