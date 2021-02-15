import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/ThemeController.dart';
import 'ProjectView.dart';

class Projects extends StatelessWidget {
  final ScrollController scrollcontroller = ScrollController();
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Projects ",
              style: GoogleFonts.mali(
                fontSize: 26,
                color:
                    themeController.darkmode.value ? Colors.white : Colors.blue,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 70, right: 20),
          child: Container(
            height: 250,
            child: Center(
              child: ListView(
                controller: scrollcontroller,
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                children: [
                  ProjectView(
                    name: "Student Result Management System  ",
                    imgurl: "",
                    projectintro: "Kotlin + Ktor ",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ProjectView(
                    name: "GST Billing Software",
                    imgurl: "",
                    projectintro: "Java + Kotlin + JavaFX + MySQL",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
