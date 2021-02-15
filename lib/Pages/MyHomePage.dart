import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../Controllers/ThemeController.dart';
import '../UIs/FooterWidget.dart';
import '../UIs/HeaderWidget.dart';
import '../UIs/MiddleWidget.dart';

class MyHome extends StatelessWidget {
  final ThemeController themeController = Get.find();
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: themeController.background.value,
      appBar: PreferredSize(
        preferredSize: Size(Get.width, 150),
        child: Header(),
      ),
      body: VsScrollbar(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        allowDrag: true,
        color: Colors.indigo,
        radius: 60,
        thickness: 10,
        isAlwaysShown: true,
        scrollbarFadeDuration: Duration(milliseconds: 500),
        scrollbarTimeToFade: Duration(milliseconds: 800),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              MiddleWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
