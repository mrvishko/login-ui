// ignore_for_file: prefer_const_constructors

import 'package:LoginPage_BlackFriday1/screen/login_screen.dart';
import 'package:flutter/material.dart';
import  'screen/login_screen.dart';
import 'screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
