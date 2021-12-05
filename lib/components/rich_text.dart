import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class FixedRichTextLogin extends StatelessWidget {
  final String? leftLabel;
  final String? rightLabel;
  final Function()? onTap;

  const FixedRichTextLogin({Key? key, this.onTap,this.leftLabel,this.rightLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: leftLabel,
            style: K.textStyle,
            children: [
          TextSpan(
              text: rightLabel,
              style: const TextStyle(fontSize: 15, color: K.mainColor),
              recognizer: TapGestureRecognizer()..onTap = onTap)
        ]));
  }
}
