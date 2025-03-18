import 'package:get/get.dart';
import 'package:task/resources/routes/routes_names.dart';
import 'package:task/view/bottom_tab/bottom_navigation_tab.dart';
import 'package:task/view/home/home_view.dart';
import 'package:task/view/login/login_view.dart';
import 'package:task/view/signup/signup_view.dart';

class AppRoutes {
  static appRoutes() =>
      [                        GetPage(name: RouteName.signupScreen, page:() => SignupScreen()),
        GetPage(name: RouteName.loginScreen, page:() => LoginScreen()),

                GetPage(name: RouteName.homecreen, page:() => HomeScreen()),



                GetPage(name: RouteName.mainScreen, page:() => MainScreen()),

        ];
}
