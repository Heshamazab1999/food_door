import 'package:flutter/material.dart';
import 'package:food_door/Routes/app_routes.dart';
import 'package:food_door/components/fixed_appbar.dart';
import 'package:food_door/components/fixed_button.dart';
import 'package:food_door/components/rich_text.dart';
import 'package:food_door/components/text_from_field.dart';
import 'package:food_door/constant.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.whiteColor,
      appBar: FixedAppbar(
        key: key,
        label: "Sign in",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text("Welcome to", style: K.welcomeTextStyle),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Enter your Phone number or Email\naddress for sign in,Enjoy your food",
                  style: K.textStyle),
              const SizedBox(
                height: 10,
              ),
              FixedTextFieldInput(
                key: key,
                label: "Username",
                icon: Icons.person,
                onChange: (v) {
                  print(v);
                },
              ),
              FixedTextFieldInput(
                key: key,
                icon: Icons.lock,
                label: "Password",
                onChange: (v) {
                  print(v);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FixedButton(
                key: key,
                label: "Sign in",
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: FixedRichTextLogin(
                  leftLabel: "Don't have an account?",
                  rightLabel: " Sign up",
                  onTap: () {
                    Get.toNamed(AppRoutes.registerScreen);
                    print("c");
                  },
                  key: key,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text("OR",
                      style: TextStyle(fontSize: 18, color: K.blackColor))),
              const SizedBox(
                height: 20,
              ),
              GFButton(
                color: const Color(0xFF4267B2),
                onPressed: () {},
                text: "Connect with facebook",
                textStyle: K.textButtonStyle,
                size: 50,
                icon: const Icon(
                  Icons.facebook,
                  color: K.whiteColor,
                ),
                type: GFButtonType.solid,
                fullWidthButton: true,
              ),
              const SizedBox(
                height: 10,
              ),
              GFButton(
                onPressed: () {},
                text: "Connect with Google",
                textStyle: K.textButtonStyle,
                size: 50,
                icon: const Icon(
                  Icons.g_mobiledata_outlined,
                  size: 30,
                  color: K.whiteColor,
                ),
                type: GFButtonType.solid,
                fullWidthButton: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
