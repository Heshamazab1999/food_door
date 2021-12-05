import 'package:flutter/material.dart';
import 'package:food_door/Routes/app_routes.dart';
import 'package:food_door/Routes/app_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onBoardingScreen,
      getPages: AppScreen.screens,
    );
  }
}
