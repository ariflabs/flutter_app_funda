// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:funda_app/pages/home_page.dart';
import 'package:funda_app/pages/profile_page.dart';
import 'package:funda_app/pages/setting_page.dart';
// import 'package:funda_app/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // keep track the current page to display
  int _selectedIndex = 0;

  // method to update the current page
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // home page
    HomePage(),

    // Profile page
    ProfilePage(),

    // Seetings page
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
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
      body: _pages[_selectedIndex], // home page
      // Button Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          // Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

          // Setting
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
