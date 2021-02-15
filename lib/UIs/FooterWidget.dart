import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/ThemeController.dart';

class Footer extends StatelessWidget {
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 50,
        color:
            themeController.darkmode.value ? Colors.black45 : Colors.grey[100],
        child: Center(
          child: SelectableText.rich(
            TextSpan(children: [
              TextSpan(
                  text: "©️ 2021 Shreeman Arjun", style: GoogleFonts.sofia()),
              TextSpan(
                  text: " \n  Built with 💘 Flutter",
                  style: GoogleFonts.pacifico(letterSpacing: 2))
            ]),
            enableInteractiveSelection: false,
            dragStartBehavior: DragStartBehavior.start,
            showCursor: true,
            toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
          ),
        ),
      ),
    );
  }
}
