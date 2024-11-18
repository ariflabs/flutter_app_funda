// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:funda_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            "1st Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: Text("Go to 2nd Page"),
          onPressed: () {
            // navigate to the second page
            Navigator.pushNamed(context, '/secondpage');

            // --- Without Named Route --- ///
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SecondPage(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
