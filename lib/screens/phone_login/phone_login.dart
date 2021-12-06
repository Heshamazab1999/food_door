import 'package:flutter/material.dart';
import 'package:food_door/components/fixed_appbar.dart';
import 'package:food_door/components/fixed_button.dart';
import 'package:food_door/components/phone_text_field.dart';
import 'package:food_door/constant.dart';
import 'package:food_door/screens/phone_login/verification_screen.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneLogin extends StatelessWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PhoneNumber? phone;
    return Scaffold(
        appBar: FixedAppbar(
          key: key,
          label: "Login into House Food",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Enter your registered phone\n number to log",
                  style: K.welcomeTextStyle,
                ),
                const SizedBox(
                  height: 40,
                ),
                PhoneTextField(
                  key: key,
                  onChange: (v) {
                    phone = v;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                FixedButton(
                  key: key,
                  label: "Continue",
                  onTap: () {
                    Get.to(() => VerificationScreen(
                          key: key,
                          phone: phone,
                        ));
                  },
                )
              ],
            ),
          ),
        ));
  }
}
