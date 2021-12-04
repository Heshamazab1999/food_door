import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class FixedRichTextLogin extends StatelessWidget {
  final Function()? onTap;

  const FixedRichTextLogin({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Don't have an account?",
            style: const TextStyle(fontSize: 15, color: K.blackColor),
            children: [
          TextSpan(
              text: "Sign up",
              style: const TextStyle(fontSize: 15, color: K.mainColor),
              recognizer: TapGestureRecognizer()..onTap = onTap)
        ]));
  }
}
