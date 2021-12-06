import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class FixedRichTextOtp extends StatelessWidget {
  final String? leftLabel;
  final String? rightLabel;

  const FixedRichTextOtp({Key? key, this.leftLabel, this.rightLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(text: leftLabel, style: K.hintStyle, children: [
      TextSpan(
        text: rightLabel,
        style: const TextStyle(fontSize: 15, color: K.secondColor),
      )
    ]));
  }
}
