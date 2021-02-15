import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.download_sharp),
      label: Text("Download My Resume"),
      onPressed: () async {
        const url =
            "https://drive.google.com/file/d/1NpEbKIc9WC7RvnAZMLpdxsZynLdv4mJS/view?usp=sharing";
        if (await canLaunch(url)) {
          await launch(url);
        } else
          print("Can not launch");
      },
    );
  }
}
