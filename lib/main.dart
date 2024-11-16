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
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //1st box
            Container(
              width: 300,
              // height: 200,
              color: Colors.deepPurple,
            ),

            //2nd box
            Container(
              width: 300,
              // height: 200,
              color: Colors.deepPurple[300],
            ),

            //3rd box
            Container(
              width: 300,
              // height: 200,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }
}
