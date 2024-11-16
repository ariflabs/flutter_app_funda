// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Arif Hidayat", "Acep Cepot", "Pinokio"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: names.length,
          // itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            title: Text(names[index]),
            // title: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}
