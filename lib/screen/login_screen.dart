import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/screenController/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("L o g i n"),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 50,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextFormField(
                controller: controller.passwordController.value,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              Obx(() => InkWell(
                    onTap: () {
                      controller.loginApi();
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                      child: Center(
                        child: controller.loading.value ? CircularProgressIndicator(color: Colors.white,): Text(
                          "L o g i n",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
