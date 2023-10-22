import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/src/nav_button.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/screens/Education.dart';
import 'package:portfolio/screens/activities_page.dart';
import 'package:portfolio/screens/Profile_page.dart';

class MyMobileBuddy extends StatefulWidget {
  MyMobileBuddy({super.key});

  @override
  State<MyMobileBuddy> createState() => _MyMobileBuddyState();
}

class _MyMobileBuddyState extends State<MyMobileBuddy> {
  int index = 2;
  final screens = [
    ProfilePage(),
    Education(),
    Activities(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.workspaces,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        animationDuration: Duration(microseconds: 700),
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),

      // backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('profile'),
        backgroundColor: Colors.deepPurple.shade200,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple.shade200,
        child: ListView(
          // Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      body: screens[index],
    );
  }
}
