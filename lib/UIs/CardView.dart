import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hover_effect/hover_effect.dart';

import '../Controllers/ThemeController.dart';
import 'HeaderWidget.dart';
import 'IntroductionWidget.dart';
import 'ProfileWidget.dart';
import 'SocialWidget.dart';

class CardView extends StatelessWidget {
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: themeController.background.value,
        appBar: PreferredSize(
          preferredSize: Size(Get.width, 150),
          child: Header(),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: context.width,
            height: context.height,
            color:
                themeController.darkmode.value ? Colors.black87 : Colors.white,
            child: HoverCard(
              builder: (context, hovering) {
                return Column(
                  children: [
                    ProfileWidget(),
                    Introduction(),
                    SocialButtons(),
                  ],
                );
              },
              depth: 10,
              depthColor: themeController.darkmode.value
                  ? Colors.black87
                  : Colors.white,
              onTap: () => print('Hello, World!'),
              shadow: BoxShadow(
                  color: Colors.purple[200],
                  blurRadius: 30,
                  spreadRadius: -100,
                  offset: Offset(0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}
