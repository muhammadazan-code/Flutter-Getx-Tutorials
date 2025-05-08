import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/resources/colors/app_colors.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus();
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message.toString(),
      backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message.toString(),
      backgroundColor: AppColors.blackColor,
      gravity: ToastGravity.CENTER_RIGHT,
    );
  }

  static snackBar({required String title, required String message}) {
    Get.snackbar(
      title,
      message,
    );
  }
}
