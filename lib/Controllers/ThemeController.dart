import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var darkmode = true.obs;
  var themeicon = Icons.brightness_2_outlined.obs;
  var background = Colors.black.obs;
  void initState() {
    if (!darkmode.value) {
      themeicon.value = Icons.brightness_2_outlined;
      background.value = Colors.white;
    }
  }

  changeTheme() {
    if (darkmode.value) {
      Get.changeTheme(ThemeData.light());
      darkmode.value = false;
      themeicon.value = Icons.brightness_2_outlined;
      background.value = Colors.white;
    } else {
      Get.changeTheme(ThemeData.dark());
      darkmode.value = true;
      themeicon.value = Icons.brightness_4_outlined;
      background.value = Colors.black;
    }
  }
}
