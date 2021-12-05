import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class FixedTextFieldInput extends StatelessWidget {
  final Function(String)? onChange;
  final String? label;
  final IconData? icon;
  final IconButton? suffixIcon;
  final TextInputType? type;
  final TextEditingController? controller;
  final bool? isSecure;

  const FixedTextFieldInput(
      {Key? key,
      this.onChange,
      this.isSecure=false,
      this.suffixIcon,
      this.label,
      this.icon,
      this.type,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        keyboardType: type,
        onChanged: onChange,
        obscureText: isSecure!,
        controller: controller,
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
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: K.mainColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
