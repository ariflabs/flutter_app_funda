// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void onTapped() {
    print("User Tapped the Container");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: onTapped,
            // onTap: () {
            //   // do somthing when user tapped the container.
            //   print("User Tapped the Container");
            // },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
              child: Center(child: Text("Tap Me!")),
            ),
          ),
        ),
      ),
    );
  }
}
