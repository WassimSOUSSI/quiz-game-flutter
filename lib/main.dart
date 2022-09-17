// ignore_for_file: prefer_const_constructors

import 'package:application/routes/aboutInterface.dart';
import 'package:application/routes/quizInterface.dart';
import 'package:application/routes/resultsInterface.dart';
import 'package:application/routes/splashInterface.dart';
import 'package:application/routes/homeInterface.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashInterface(),
        '/home': (context) => const HomeInterface(),
        '/about': (context) => const AboutInterface(),
        '/quiz': (context) => QuizInterface(),
      },
    );
  }
}
