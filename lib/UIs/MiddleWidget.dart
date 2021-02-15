import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DownloadResumeWidget.dart';
import 'IntroductionWidget.dart';
import 'ProfileWidget.dart';
import 'ProjectsWidegt.dart';
import 'SocialWidget.dart';

class MiddleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileWidget(),
        Introduction(),
        SocialButtons(),
        ElevatedButton(
          onPressed: () {
            Get.toNamed('/cardview');
          },
          child: Text("Click to Hover Card View "),
        ),
        SizedBox(
          height: 20,
        ),
        MyResume(),
        SizedBox(
          height: 20,
        ),
        Projects(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
