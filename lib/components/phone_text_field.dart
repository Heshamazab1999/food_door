import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({Key? key, this.controller, this.onChange})
      : super(key: key);
  final TextEditingController? controller;
  final Function(PhoneNumber)? onChange;

  @override
  Widget build(BuildContext context) {
    PhoneNumber number = PhoneNumber(isoCode: 'EG');

    return InternationalPhoneNumberInput(
      onInputChanged: onChange,
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.DIALOG,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black),
      initialValue: number,
      textFieldController: controller,
      inputDecoration: const InputDecoration(
          hintText: "01004479160",
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: K.mainColor))),
      keyboardType:
          const TextInputType.numberWithOptions(signed: true, decimal: true),
    );
  }
}
