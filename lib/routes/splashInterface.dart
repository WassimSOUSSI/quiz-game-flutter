// ignore_for_file: prefer_const_constructors

import 'package:application/routes/homeInterface.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashInterface extends StatelessWidget {
  const SplashInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: HomeInterface(),
      backgroundColor: Color.fromRGBO(253, 106, 2, 1),
      splash: Image(
          image: AssetImage('assets/Splash_App_Icon_1.png'), fit: BoxFit.cover),
      splashIconSize: 300,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
