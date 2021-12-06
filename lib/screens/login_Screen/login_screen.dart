import 'package:flutter/material.dart';
import 'package:food_door/Routes/app_routes.dart';
import 'package:food_door/components/fixed_appbar.dart';
import 'package:food_door/components/fixed_button.dart';
import 'package:food_door/components/rich_text.dart';
import 'package:food_door/components/text_from_field.dart';
import 'package:food_door/constant.dart';
import 'package:food_door/screens/login_Screen/controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(LoginController());
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
                  style: K.hintStyle),
              const SizedBox(
                height: 10,
              ),
              FixedTextFieldInput(
                controller: _controller.email,
                type: TextInputType.emailAddress,
                key: key,
                label: "Email",
                icon: Icons.email,
                onChange: (v) {},
              ),
              Obx(() => FixedTextFieldInput(
                  controller: _controller.password,
                  type: TextInputType.text,
                  key: key,
                  icon: Icons.lock,
                  label: "Password",
                  onChange: (v) {},
                  isSecure: _controller.check,
                  suffixIcon: _controller.check
                      ? IconButton(
                          onPressed: () {
                            _controller.handleCheckFun();
                          },
                          icon: const Icon(
                            Icons.visibility,
                            color: K.grayColor,
                          ))
                      : IconButton(
                          onPressed: () {
                            _controller.handleCheckFun();
                          },
                          icon: const Icon(
                            Icons.visibility_off,
                            color: K.mainColor,
                          )))),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.forgetPassword);
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(fontSize: 13, color: K.mainColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              FixedButton(
                key: key,
                label: "Sign in",
                onTap: () {
                  Get.toNamed(AppRoutes.phoneLogin);
                  _controller.email.clear();
                  _controller.password.clear();
                },
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GFIconButton(
                    onPressed: () {},
                    color: const Color(0xFF4267B2),
                    icon: const Icon(MdiIcons.facebook),
                    size: GFSize.MEDIUM,
                  ),
                  GFIconButton(
                    onPressed: () {},
                    color: const Color(0xFFDB4437),
                    icon: const Icon(
                      MdiIcons.google,
                    ),
                    size: GFSize.MEDIUM,
                  ),
                  GFIconButton(
                    onPressed: () {},
                    color: const Color(0xFF25D366),
                    icon: const Icon(
                      MdiIcons.whatsapp,
                    ),
                    size: GFSize.MEDIUM,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
