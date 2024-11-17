// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            // Big Box
            Container(
              width: 300,
              height: 300,
              color: Colors.deepPurple,
            ),

            // Medium Box
            Container(
              width: 200,
              height: 200,
              color: Colors.deepPurple[400],
            ),

            // Small Box
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple[300],
            ),
          ],
        ),
      ),
    );
  }
}
