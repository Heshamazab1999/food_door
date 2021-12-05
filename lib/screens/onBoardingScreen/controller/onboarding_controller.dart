import 'package:flutter/material.dart';
import 'package:food_door/components/page_view.dart';
import 'package:food_door/controller/base_controller.dart';
import 'package:get/get.dart';

class OnBoardingController extends BaseController {
  final boardController = PageController();
  final isLast = false.obs;
  final isFirst = true.obs;
  final List<BoardingModel> labels = [
    BoardingModel(
        label: "Track Your Health\nReports With Us",
        image: "assets/images/delivery3.json"),
    BoardingModel(
        label: "Get Reminders For Your\nMedications ",
        image: "assets/images/delivery1.json"),
    BoardingModel(
        label: "Share Your Reports\nWith Your Doctors",
        image: "assets/images/delivery4.json"),
    BoardingModel(
        label: "Book an appointment with a\nright doctor",
        image: "assets/images/delivery2.json"),
  ];

  isLastFunction(int index) {
    if (index == labels.length - 1) {
      isLast.value = true;
    } else {
      isLast.value = false;
    }
  }

  isFirstFunction(int index) {
    if (index == labels.length - 4) {
      isFirst.value = true;
    } else {
      isFirst.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    isFirstFunction(0);
  }
}
