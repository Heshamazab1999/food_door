import 'package:flutter/material.dart';
import 'package:food_door/components/fixed_appbar.dart';
import 'package:food_door/components/fixed_button.dart';
import 'package:food_door/components/text_from_field.dart';
import 'package:food_door/constant.dart';
import 'package:food_door/screens/Forget_Password/controller/forget_controller.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ForgetController());
    return Scaffold(
      appBar: FixedAppbar(
        key: key,
        label: "Forget Password",
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
              const Text(
                "Forget Password",
                style: K.welcomeTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Please enter your Email so we can help you\n recover your password  ",
                style: K.hintStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              FixedTextFieldInput(
                controller: _controller.email,
                type: TextInputType.emailAddress,
                key: key,
                label: "Email",
                icon: Icons.email,
                onChange: (v) {},
              ),
              const SizedBox(
                height: 25,
              ),
              FixedButton(
                key: key,
                label: "Reset Password",
                onTap: () {
                  _controller.email.clear();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
