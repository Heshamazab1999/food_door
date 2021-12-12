import 'package:flutter/material.dart';
import 'package:food_door/components/appbar_category_screen.dart';
import 'package:food_door/components/card_cart.dart';
import 'package:food_door/components/category_card.dart';
import 'package:food_door/constant.dart';
import 'package:food_door/screens/Category_Screen/controller/category_controller.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(CategoryController());
    return Scaffold(
      appBar: AppbarCategoryScreen(
        key: key,
        images: _controller.icons,
        labels: _controller.labels,
        onchange: (v) {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Favourite",
                    style: K.welcomeTextStyle,
                  ),
                  Text(
                    "See All",
                    style: K.textCategoryStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: 3,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => CategoryCard(
                          key: key,
                          label: "Burger King",
                          image: "assets/images/burger.png",
                          rate: "4.9",
                          distance: "10 KM",
                          time: "10 min",
                          description: "Germany Food",
                        )),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (ctx, index) => CardCart(
                        key: key,
                        color:
                            _controller.value[index] ? Colors.red : K.grayColor,
                        rate: "4.5",
                        label: "StarBucks",
                        image: "assets/images/logo.jpg",
                        function: () {
                          _controller.value[index] = !_controller.value[index];
                        },
                        time: "11 min",
                        name: "Coffee",
                        distance: "10 KM",
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
