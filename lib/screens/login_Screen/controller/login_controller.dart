import 'package:flutter/cupertino.dart';
import 'package:food_door/controller/base_controller.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  final _check = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();

  bool get check => _check.value;

  handleCheckFun() {
    _check.value = !_check.value;
  }
}
