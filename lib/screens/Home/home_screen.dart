import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';
import 'package:food_door/screens/Category_Screen/category_screen.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> bodyContent = [
      const CategoryScreen(),
    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
      body: Obx(
          () => Center(child: bodyContent.elementAt(_controller.intail.value))),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.homeCircle,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.compassOutline,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.cart,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.bookmark,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  MdiIcons.accountDetails,
                ),
                label: '',
              ),
            ],
            currentIndex: _controller.intail.value,
            onTap: (index) {
              _controller.selectPage(index);
            },
            selectedItemColor: K.mainColor,
            unselectedItemColor: K.grayColor,
            type: BottomNavigationBarType.fixed,
          )),
    );
  }
}
