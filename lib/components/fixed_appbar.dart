import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';
import 'package:get/get.dart';

class FixedAppbar extends StatelessWidget with PreferredSizeWidget {
  final String? label;

  const FixedAppbar({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: K.whiteColor,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
          size: 30,
        ),
      ),
      title: Text(
        label!,
        style: const TextStyle(fontSize: 25, color: K.blackColor),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
