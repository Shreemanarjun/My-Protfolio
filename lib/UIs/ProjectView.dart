import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controllers/ThemeController.dart';

class ProjectView extends StatelessWidget {
  final name;
  final imgurl;
  final projectintro;
  ProjectView({this.name, this.imgurl, this.projectintro});
  final ThemeController themeController = Get.find();
  final LinearGradient lightlinearGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFffffff).withOpacity(0.1),
        Color(0xFFFFFFFF).withOpacity(0.05),
      ],
      stops: [
        0.1,
        1,
      ]);
  final LinearGradient darklinearGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF000000).withOpacity(0.1),
        Color(0xFF000000).withOpacity(0.05),
      ],
      stops: [
        0.1,
        1,
      ]);
  final LinearGradient lightborderlineargradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFffffff).withOpacity(0.5),
      Color((0xFFFFFFFF)).withOpacity(0.5),
    ],
  );
  final LinearGradient darkborderlineargradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF000000).withOpacity(0.5),
      Color((0xFF000000)).withOpacity(0.5),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Obx(() => GlassmorphicContainer(
          width: 250,
          height: 250,
          borderRadius: 20,
          blur: 20,
          alignment: Alignment.center,
          border: 2,
          shape: BoxShape.rectangle,
          linearGradient: themeController.darkmode.value
              ? lightlinearGradient
              : darklinearGradient,
          borderGradient: themeController.darkmode.value
              ? lightborderlineargradient
              : darkborderlineargradient,
          child: Center(
              child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    name,
                    maxLines: 3,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.meriendaOne(
                      fontSize: 18,
                      color: themeController.darkmode.value
                          ? Colors.white
                          : Colors.blue,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 10, right: 10),
                child: Image.network(
                    "https://raw.githubusercontent.com/MindorksOpenSource/screenshot/master/images/screenshot-banner.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160, left: 10, right: 10),
                child: Center(
                  child: Text(
                    projectintro,
                    maxLines: 3,
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.comfortaa(
                        fontSize: 14,
                        color: themeController.darkmode.value
                            ? Colors.white
                            : Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
