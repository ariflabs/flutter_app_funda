// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:funda_app/pages/first_page.dart';
import 'package:funda_app/pages/home_page.dart';
import 'package:funda_app/pages/second_page.dart';
import 'package:funda_app/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => SettingPage(),
      },
    );
  }
}
