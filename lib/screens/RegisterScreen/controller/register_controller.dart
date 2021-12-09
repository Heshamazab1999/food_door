import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:food_door/components/image_dialoge.dart';
import 'package:food_door/controller/base_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class RegisterController extends BaseController {
  final _check = true.obs;
  final _picker = ImagePicker();
  final _imgPath = ''.obs;
  final username = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();

  bool get check => _check.value;

  String get imgPath => _imgPath.value;

  handleCheckFun() {
    _check.value = !_check.value;
  }

  Future<bool> requestImagePermission() async {
    if (Platform.isAndroid) {
      Permission.camera.request().isGranted;
      Permission.storage.request().isGranted;
      return true;
    } else if (Platform.isIOS) {
      Permission.camera.request().isGranted;
      Permission.photos.request().isGranted;
      return true;
    }
    return false;
  }

  chooseProfileImage() async {
    final status = await requestImagePermission();
    if (status) {
      if (_imgPath.value.isEmpty || _imgPath.value == '') {
        try {
          final isGallery = await Get.dialog(const ChooseImageDialog());
          XFile? image;
          if (isGallery != null && isGallery == true) {
            image = await _picker.pickImage(source: ImageSource.gallery);
          } else if (isGallery != null && isGallery == false) {
            image = await _picker.pickImage(source: ImageSource.camera);
          }
          if (image != null) _imgPath.value = image.path;
        } catch (e) {
          print(e);
        }
      }
    } else {
      print("error");
    }
  }
}
