import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class FixedButton extends StatelessWidget {
  final String? label;
  final Function()? onTap;

  const FixedButton({Key? key, this.label, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 60,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label!,
          style: K.textButtonStyle,
        ),
        style: TextButton.styleFrom(
            backgroundColor: K.mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
