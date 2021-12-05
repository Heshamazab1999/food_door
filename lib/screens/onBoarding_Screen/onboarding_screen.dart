import 'package:flutter/material.dart';
import 'package:food_door/components/page_view.dart';
import 'package:food_door/constant.dart';
import 'package:food_door/screens/login_Screen/login_screen.dart';
import 'package:food_door/screens/onBoarding_Screen/controller/onboarding_controller.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final _controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller.boardController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      pageViewScreen(_controller.labels[index]),
                  itemCount: _controller.labels.length,
                  onPageChanged: (int index) {
                    _controller.isFirstFunction(index);
                    _controller.isLastFunction(index);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => _controller.isFirst.value
                      ? GestureDetector(
                          onTap: () {
                            if (_controller.isFirst.value) {
                              Get.offAll(const LoginScreen());
                            }
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(fontSize: 18, color: K.mainColor),
                          ))
                      : IconButton(
                          onPressed: () {
                            _controller.boardController.previousPage(
                                duration: const Duration(milliseconds: 800),
                                curve: Curves.fastLinearToSlowEaseIn);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: K.mainColor,
                          ))),
                  SmoothPageIndicator(
                      controller: _controller.boardController, // PageController
                      count: _controller.labels.length,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        activeDotColor: K.mainColor,
                        dotWidth: 10,
                        spacing: 5,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                  Obx(() => _controller.isLast.value
                      ? GestureDetector(
                          onTap: () {
                            if (_controller.isLast.value) {
                              Get.offAll(const LoginScreen());
                            }
                          },
                          child: const Text(
                            "Continue",
                            style: TextStyle(fontSize: 18, color: K.mainColor),
                          ))
                      : IconButton(
                          onPressed: () {
                            _controller.boardController.nextPage(
                                duration: const Duration(milliseconds: 800),
                                curve: Curves.fastLinearToSlowEaseIn);
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: K.mainColor,
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
