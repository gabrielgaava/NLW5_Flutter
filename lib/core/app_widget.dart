//import 'package:DevQuiz/home/home_page.dart';
import 'package:DevQuiz/pages/challenge/challenge_page.dart';
import 'package:DevQuiz/pages/home/home_page.dart';
//import 'package:DevQuiz/pages/home/home_page.dart';
//import 'package:DevQuiz/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
