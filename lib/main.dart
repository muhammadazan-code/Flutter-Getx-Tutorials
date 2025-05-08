import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/resources/routes/routes.dart';
import 'package:get_x_tutorial/resources/routes/routes_names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: Locale('en','US'),
      fallbackLocale: Locale('urd','PK'),
      initialRoute: RoutesNames.splashScreen,
      getPages: AppRoutes.appRoutes(),
    );
  }
}
