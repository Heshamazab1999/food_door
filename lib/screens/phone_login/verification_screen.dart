import 'package:flutter/material.dart';
import 'package:food_door/components/fixed_appbar.dart';
import 'package:food_door/components/fixed_button.dart';
import 'package:food_door/components/pin_code.dart';
import 'package:food_door/components/rich_otp_text.dart';
import 'package:food_door/components/rich_text.dart';
import 'package:food_door/constant.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key, this.phone}) : super(key: key);
  final PhoneNumber? phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FixedAppbar(
        key: key,
        label: "Verification",
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
              const Text(
                "Verification",
                style: K.welcomeTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              FixedRichTextOtp(
                key: key,
                leftLabel:
                    "Enter the OTP Code From PhoneNumber Just\n sent you at ",
                rightLabel:
                    phone.toString().isEmpty ? "01004479160" : phone.toString(),
              ),
              const SizedBox(
                height: 30,
              ),
              PinCodeExample(
                onChange: (v) {
                  print(v);
                },
              ),
              FixedRichTextLogin(
                key: key,
                leftLabel: "Didn't receive SMS ?",
                rightLabel: " Resend Code",
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              FixedButton(
                key: key,
                label: "Verify",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
