import 'package:get/get.dart';
import 'package:get_x_tutorial/resources/routes/routes_names.dart';
import 'package:get_x_tutorial/view/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesNames.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
  ];
}
