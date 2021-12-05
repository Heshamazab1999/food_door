import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class BoardingModel {
  final String? label;
  final String? image;
  final String? description;

  BoardingModel({this.label, this.image, this.description});
}

Widget pageViewScreen(BoardingModel model) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(model.image!, width: Get.width),
        const SizedBox(
          height: 20,
        ),
        Text(
          model.label!,
          style: K.welcomeTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          model.description!,
          style: K.textStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
