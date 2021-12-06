import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeExample extends StatelessWidget {
  const PinCodeExample({Key? key, this.controller, required this.onChange})
      : super(key: key);
  final TextEditingController? controller;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.phone,
      controller: controller,
      cursorColor: K.secondColor,
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        selectedColor: K.mainColor,
        inactiveColor: K.mainColor,
        activeColor: K.mainColor,
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      onChanged: onChange,
      appContext: context,
    );
  }
}
