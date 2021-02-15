import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'InitialBinding.dart';
import 'Pages/Error404Page.dart';
import 'Pages/MyHomePage.dart';
import 'UIs/CardView.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return GetMaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(
            color: Colors.black,
          )),
      initialBinding: InitialBindings(),
      unknownRoute: GetPage(name: '/notfound', page: () => Error404Page()),
      getPages: [
        GetPage(name: '/home', page: () => MyHome()),
        GetPage(name: '/cardview', page: () => CardView())
      ],
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      enableLog: false,
      title: "Shreeman Arjun's Portfolio ",
      home: SplashScreen.navigate(
        name: 'assets/aniamations/aloading.flr',
        backgroundColor: Colors.white,
        next: (_) => MyHome(),
        until: () => Future.delayed(Duration(seconds: 0)),
        height: 400,
        width: 400,
        fit: BoxFit.contain,
        startAnimation: 'loading',
      ),
    );
  }
}
