import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../Controllers/ThemeController.dart';
import 'LogoWidget.dart';

class Header extends StatelessWidget {
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        height: 50,
        width: Get.context.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: LogoWidget(),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Obx(() => IconButton(
                    icon: Icon(themeController.themeicon.value),
                    color: Colors.blue,
                    onPressed: () async {
                      print(themeController.darkmode.value);
                      await themeController.changeTheme();
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
