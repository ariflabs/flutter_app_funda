// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // place your drawer header here
            DrawerHeader(
              child: Icon(
                Icons.person,
                size: 48,
              ),
            ),

            // Home page tile list
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);
                // navigate to the Home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            // Seeting page tile list
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);
                // navigate to the Setting page
                Navigator.pushNamed(context, '/settingpage');
              },
            ),
          ],
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
