import 'package:flutter/material.dart';
import 'package:portfolio/responsive/mobile_width.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBuddy;
  final Widget desktopBuddy;

  ResponsiveLayout({required this.mobileBuddy, required this.desktopBuddy});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileBuddy;
      } else {
        return desktopBuddy;
      }
    });
  }
}
