import 'package:food_door/controller/base_controller.dart';
import 'package:get/get.dart';

class CategoryController extends BaseController {
  final value = List<bool>.filled(6, false).obs;

  final List<String> icons = [
    'assets/icons/burger.svg',
    'assets/icons/pizza.svg',
    'assets/icons/crepe.svg',
    'assets/icons/dessert.svg',
    'assets/icons/drinks.svg'
  ];
  final List<String> labels = [
    'BreakFast',
    'Pizza',
    'Crepe',
    'Dessert',
    'Drinks'
  ];
}
