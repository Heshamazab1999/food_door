import 'package:food_door/Routes/app_routes.dart';
import 'package:food_door/screens/signinScreen/login_screen.dart';
import 'package:food_door/screens/signupScreen/signup_screen.dart';
import 'package:get/get.dart';

class AppScreen {
  static final screens = [
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () => const RegisterScreen()),
  ];
}
