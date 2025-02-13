import 'package:get/get.dart';
import 'package:study_app/view/Auth/LoginScreen.dart';
import 'package:study_app/view/Auth/SignupScreen.dart';
import 'package:study_app/view/SplashScreen/SplashScreen.dart';

final List<GetPage<dynamic>> approutes = [
  GetPage(
    name: RouteNames.splash,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: RouteNames.SignupScreen,
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: RouteNames.LoginScreen,
    page: () => const LoginScreen(),
  ),
];

class RouteNames {
  static String splash = "/";
  static String SignupScreen = "/SignupScreen";
  static String LoginScreen = "/LoginScreen";
}
