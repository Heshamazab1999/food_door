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

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.whiteColor,
      appBar: FixedAppbar(
        key: key,
        label: "Sign up",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Create an account",
                style: K.welcomeTextStyle,
              ),
              FixedRichTextLogin(
                leftLabel: "Enter your Name,Email,Password,\nfor sign up? ",
                rightLabel: "Already have account?",
                onTap: () {
                  Get.toNamed(AppRoutes.loginScreen);
                  print("c");
                },
                key: key,
              ),
              const SizedBox(
                height: 10,
              ),
              FixedTextFieldInput(
                key: key,
                icon: Icons.person,
                label: "UserName",
                onChange: (v) {
                  print(v);
                },
              ),
              FixedTextFieldInput(
                key: key,
                icon: Icons.email,
                label: "Email",
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
                height: 20,
              ),
              FixedButton(
                key: key,
                label: "Create account",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
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
