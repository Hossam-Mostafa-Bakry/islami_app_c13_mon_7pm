import 'dart:async';

import 'package:flutter/material.dart';

import '../modules/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // execute before build function
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushNamedAndRemoveUntil(
          LayoutView.routeName,
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Image.asset(
      "assets/images/splash_screen_2.png",
      width: mediaQuery.width,
      height: mediaQuery.height,
      fit: BoxFit.cover,
    );
  }
}
