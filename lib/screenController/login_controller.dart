import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;
  void loginApi() async {
    loading.value = true;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: jsonEncode({
            "email": emailController.value.text.trim(),
            "password": passwordController.value.text.trim(),
          }));
      final statusCode = response.statusCode;
      Map<String, dynamic> data = jsonDecode(response.body);
      if (response.statusCode == statusCode) {
        loading.value = false;
        Get.snackbar('Login Successfully', 'Token: ${data["token"]}');
      } else {
        loading.value = false;
        Get.snackbar('Login Failed', data['error'] ?? 'Something went wrong.');
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}
