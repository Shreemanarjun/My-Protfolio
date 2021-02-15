import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          print(Get.currentRoute);
          if ( Get.currentRoute == '/' || Get.currentRoute == '/home' || Get.currentRoute=='' ) {
            print("You are already in homepage");
          } else {
            Get.offAllNamed("/home");
          }
        },
        child: Container(
          height: 40,
          width: 40,
          child: Image.asset(
            "assets/images/code.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
