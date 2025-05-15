import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/models/loginModel/login_response_model.dart';
import 'package:get_x_tutorial/repository/login_repository/login_repository.dart';
import 'package:get_x_tutorial/utils/utils.dart';
import 'package:get_x_tutorial/view_models/controller/userPreference/user_preference_view_model.dart';

class LoginViewModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  UserPreferenceModel userPreferenceModel = UserPreferenceModel();

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  final _api = LoginRepository();
  RxBool loading = false.obs;
  void loginPostApi() {
    var data = jsonEncode({
      'email': emailController.value.text,
      'password': passwordController.value.text,
    });

    loading.value = true;
    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'] == 'User not found') {
        Get.snackbar('Login', value['error']);
      } else {
        userPreferenceModel.saveUser(LoginResponseModel.fromJson(value)).then((value){
          Get.snackbar('User Saved', 'Saved');
        }).onError((error, stackTrace){
          Get.snackbar('Not save', 'user not saved.');
        });
        Utils.snackBar(title: 'login_successfully'.tr, message: 'token');

      }
    }).onError((error, statckTrace) {
      loading.value = false;
      Utils.snackBar(
        title: 'login_failed'.tr,
        message: error.toString(),
      );
    });
  }
}
