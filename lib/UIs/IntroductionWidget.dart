import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/ThemeController.dart';

class Introduction extends StatelessWidget {
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Center(
        child: SelectableText.rich(
          TextSpan(
              style: GoogleFonts.comicNeue(
                fontSize: 20,
                color:
                    themeController.darkmode.value ? Colors.white : Colors.blue,
                wordSpacing: 4,
              ),
              children: [
                TextSpan(text: "Hi, "),
                TextSpan(text: "\nI'm "),
                TextSpan(
                  text: "Shreeman Arjun Sahu.",
                  style: GoogleFonts.meriendaOne(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '\nI make things that help everyone.',
                  style: GoogleFonts.workSans(fontSize: 12),
                ),
              ]),
          textAlign: TextAlign.center,
          cursorColor: Colors.red,
          enableInteractiveSelection: true,
          
          showCursor: true,
          toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
        ),
      ),
    );
  }
}
