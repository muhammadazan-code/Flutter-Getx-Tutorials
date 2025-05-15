import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/resources/colors/app_colors.dart';
import 'package:get_x_tutorial/resources/components/round_button.dart';
import 'package:get_x_tutorial/resources/routes/routes_names.dart';
import 'package:get_x_tutorial/utils/utils.dart';
import 'package:get_x_tutorial/view_models/controller/login/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginView = Get.put(LoginViewModel());

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'login'.tr,
            style: TextTheme.of(context).titleMedium!.copyWith(
                  fontSize: 25,
                  color: AppColors.textColor,
                ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                spacing: 30,
                children: [
                  TextFormField(
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginView.emailFocusNode.value,
                          loginView.passwordFocusNode.value);
                    },
                    controller: loginView.emailController.value,
                    focusNode: loginView.emailFocusNode.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar(
                          title: 'Email',
                          message: 'email_hint'.tr,
                        );
                      } else {
                        return null;
                      }
                      return "";
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'email_hint'.tr),
                  ),
                  TextFormField(
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                        context,
                        loginView.emailFocusNode.value,
                        loginView.passwordFocusNode.value,
                      );
                    },
                    controller: loginView.passwordController.value,
                    focusNode: loginView.passwordFocusNode.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar(
                            title: 'Password', message: 'password_hint'.tr);
                      } else {
                        return null;
                      }
                      return "";
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password_hint'.tr,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => RoundButtonWidget(
                loading: loginView.loading.value,
                onPress: () {
                  if (_formkey.currentState!.validate()) {
                    loginView.loginPostApi();
                    Get.toNamed(RoutesNames.homeScreen);
                  }
                },
                title: 'login'.tr,
                height: 60,
                width: 200,
                buttonColor: Colors.blueAccent,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
