import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Controllers/ThemeController.dart';

class SocialButtons extends StatelessWidget {
  final ThemeController themecontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    final imagecolor =
        themecontroller.darkmode.value ? Colors.white.obs : Colors.black.obs;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 350,
        height: 55,
        child: Card(
          color: themecontroller.darkmode.value
              ? Colors.black45.withOpacity(0.9)
              : Colors.white.withOpacity(0.9),
          elevation: 10,
          shadowColor: Colors.blue,
          borderOnForeground: false,
          semanticContainer: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButtons(
                  imagepath: "assets/images/socialicons/github.png",
                  color: imagecolor.value,
                  onHoverColor: Colors.orange,
                  url: "https://github.com/Shreemanarjun"),
              IconButtons(
                imagepath: "assets/images/socialicons/linkedin.png",
                color: imagecolor.value,
                onHoverColor: Colors.blue,
                url: "https://www.linkedin.com/in/shreemanarjun",
              ),
              IconButtons(
                  imagepath: "assets/images/socialicons/twitter.png",
                  color: imagecolor.value,
                  onHoverColor: Colors.blueAccent,
                  url: "https://twitter.com/shreemanarjun"),
              IconButtons(
                  imagepath: "assets/images/socialicons/youtube.png",
                  color: imagecolor.value,
                  onHoverColor: Colors.red,
                  url:
                      "https://www.youtube.com/channel/UCG883fx1xOnhB-R9yzQWllg?view_as=subscriber"),
            ],
          ),
        ),
      ),
    );
  }
}

class IconButtons extends StatelessWidget {
  final imagepath;
  final color;
  final onHoverColor;
  final url;
  IconButtons({this.imagepath, this.color, this.onHoverColor, this.url});
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    //print("rebuild");
    final iconcolor =
        themeController.darkmode.value ? Colors.white.obs : Colors.black.obs;
    return Obx(() => MouseRegion(
          cursor: SystemMouseCursors.click,
          onHover: (event) {
            iconcolor.value = onHoverColor;
          },
          onExit: (event) {
            iconcolor.value = color;
          },
          child: InkWell(
            focusColor: Colors.transparent,
            onTap: () async {
              if (await canLaunch(url)) {
                launch(url);
              }
            },
            child: Image.asset(
              imagepath,
              height: 25,
              width: 25,
              color: iconcolor.value,
            ),
          ),
        ));
  }
}
