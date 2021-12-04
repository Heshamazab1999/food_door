import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class FixedTextFieldInput extends StatelessWidget {
  final Function(String)? onChange;
  final String? label;
  final IconData? icon;

  const FixedTextFieldInput({Key? key, this.onChange, this.label, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        onChanged: onChange,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: K.grayColor,
            size: 25,
          ),
          filled: true,
          fillColor: const Color(0xFFF1F1F1),
          hintText: label!,
          hintStyle: K.hintStyle,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
