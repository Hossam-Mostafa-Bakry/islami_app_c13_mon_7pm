import 'package:flutter/material.dart';
import 'package:islami_app_c13_mon_7pm/modules/layout_view.dart';
import 'package:islami_app_c13_mon_7pm/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  // 1- widget
  // 2- native way

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
      },
    );
  }
}
