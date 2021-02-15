import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: Colors.blue,
      endRadius: 60.0,
      duration: Duration(milliseconds: 5000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: Material(
        elevation: 9.0,
        borderOnForeground: false,
        shape: CircleBorder(side: BorderSide.none),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profilepic.jpg',
          ),
          // backgroundColor: Colors.grey[100],
          radius: 30,
        ),
      ),
    );
  }
}
