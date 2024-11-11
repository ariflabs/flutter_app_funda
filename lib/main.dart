// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.deepPurple[300],
          body: Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.deepPurple[500],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(25),
              child: Icon(
                Icons.home,
                size: 100,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
