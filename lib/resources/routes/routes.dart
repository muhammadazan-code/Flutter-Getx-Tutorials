import 'package:get/get.dart';
import 'package:get_x_tutorial/resources/routes/routes_names.dart';
import 'package:get_x_tutorial/view/home/home_view.dart';
import 'package:get_x_tutorial/view/login/login_screen.dart';
import 'package:get_x_tutorial/view/splash/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesNames.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesNames.loginScreen,
          page: () => LoginScreen(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesNames.homeScreen,
          page: () => HomeView(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
