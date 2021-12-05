import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';
import 'package:lottie/lottie.dart';

class BoardingModel {
  final String? label;
  final String? image;

  BoardingModel({this.label, this.image});
}

Widget pageViewScreen(BoardingModel model) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(model.image!),
        const SizedBox(
          height: 50,
        ),
        Text(
          model.label!,
          style: K.welcomeTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
