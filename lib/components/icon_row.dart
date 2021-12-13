import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class IconRow extends StatelessWidget {
  const IconRow({Key? key, this.icon, this.label}) : super(key: key);
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: K.grayColor,
        ),
        Text(
          label!,
          style: K.hintStyle,
        )
      ],
    );
  }
}
