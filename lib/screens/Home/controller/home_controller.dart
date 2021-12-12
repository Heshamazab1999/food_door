import 'package:food_door/controller/base_controller.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final intail = 0.obs;

  selectPage(int index) {
    intail.value = index;
  }
}
