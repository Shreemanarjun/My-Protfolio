import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/ThemeController.dart';

class Error404Page extends StatelessWidget {
  final ThemeController themecontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: themecontroller.background.value,
          body: Container(
            foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/404.png'),
              fit: BoxFit.fill
            )),
          ),
        ));
  }
}
