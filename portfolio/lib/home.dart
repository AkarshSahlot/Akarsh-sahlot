import 'package:flutter/material.dart';
import 'package:portfolio/responsive/desktop_Buddy.dart';
import 'package:portfolio/responsive/mobile_Buddy.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        // backgroundColor: currentWidth < 600 ? Colors.deepOrange : Colors.amber,
        body: ResponsiveLayout(
            mobileBuddy: MyMobileBuddy(), desktopBuddy: MyDesktopBuddy()));
  }
}
