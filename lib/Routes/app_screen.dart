import 'package:food_door/Routes/app_routes.dart';
import 'package:food_door/screens/Forget_Password/forget_password.dart';
import 'package:food_door/screens/RegisterScreen/signup_screen.dart';
import 'package:food_door/screens/login_Screen/login_screen.dart';
import 'package:food_door/screens/onBoarding_Screen/onboarding_screen.dart';
import 'package:food_door/screens/phone_login/phone_login.dart';
import 'package:food_door/screens/phone_login/verification_screen.dart';
import 'package:get/get.dart';

class AppScreen {
  static final screens = [
    GetPage(name: AppRoutes.onBoardingScreen, page: () => OnBoardingScreen()),
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () => const RegisterScreen()),
    GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: AppRoutes.phoneLogin, page: () => const PhoneLogin()),
    GetPage(
        name: AppRoutes.verification, page: () => const VerificationScreen()),

  ];
}
