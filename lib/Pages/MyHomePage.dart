import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_protofolio/UIs/FooterWidget.dart';
import 'package:my_protofolio/UIs/MiddleWidget.dart';

import '../Controllers/ThemeController.dart';
import '../UIs/HeaderWidget.dart';

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
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            MiddleWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
