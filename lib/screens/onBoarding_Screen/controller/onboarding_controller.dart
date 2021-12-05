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
        label: "Track Your Order",
        description:
            "When you order eat street,we will\nhook you up with exclusive coupns\n special send rewards ",
        image: "assets/images/delivery3.json"),
    BoardingModel(
        label: "Fastest Delivery ",
        description:
            "We make food ordering fast,simple\n and free no matter if you order\nonline or cash",
        image: "assets/images/delivery5.json"),
    BoardingModel(
        label: "order deliver soon",
        description:
            "If you order something and it\n says the estimated delivery date\n is in a day,",
        image: "assets/images/delivery4.json"),
    BoardingModel(
        label: "Welcome to Delivery ",
        description: "thank you  ",
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
