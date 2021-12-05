import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_door/components/avatar_image.dart';
import 'package:food_door/components/fixed_appbar.dart';
import 'package:food_door/components/fixed_button.dart';
import 'package:food_door/components/text_from_field.dart';
import 'package:food_door/constant.dart';
import 'package:food_door/screens/RegisterScreen/controller/register_controller.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(RegisterController());
    return Scaffold(
      backgroundColor: K.whiteColor,
      appBar: FixedAppbar(
        key: key,
        label: "Sign up",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              // const Text(
              //   "Create an account",
              //   style: K.welcomeTextStyle,
              // ),
              // FixedRichTextLogin(
              //   leftLabel: "Enter your Name,Email,Password,\nfor sign up? ",
              //   rightLabel: "Already have account?",
              //   onTap: () {
              //     Get.toNamed(AppRoutes.loginScreen);
              //     print("c");
              //   },
              //   key: key,
              // ),

              Center(
                child: Obx(() => LargeAvatarWithButton(
                      key: key,
                      onPressed: () {
                        _controller.chooseProfileImage();
                      },
                      image: _controller.imgPath != ''
                          ? Image.file(
                              File(_controller.imgPath),
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            )
                          : Image.asset("assets/images/icon_avatar.png"),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              FixedTextFieldInput(
                controller: _controller.username,
                type: TextInputType.name,
                key: key,
                icon: Icons.person,
                label: "UserName",
                onChange: (v) {
                  print(v);
                },
              ),
              FixedTextFieldInput(
                controller: _controller.email,
                type: TextInputType.emailAddress,
                key: key,
                icon: Icons.email,
                label: "Email",
                onChange: (v) {
                  print(v);
                },
              ),
              Obx(() => FixedTextFieldInput(
                    controller: _controller.password,
                    type: TextInputType.text,
                    key: key,
                    icon: Icons.lock,
                    label: "Password",
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
                            )),
                    onChange: (v) {
                      print(v);
                    },
                  )),
              const SizedBox(
                height: 20,
              ),
              FixedButton(
                key: key,
                label: "Create account",
                onTap: () {
                  _controller.password.clear();
                  _controller.email.clear();
                  _controller.username.clear();
                },
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
              const SizedBox(
                height: 10,
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
