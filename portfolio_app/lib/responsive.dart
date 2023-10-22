import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;
  final Widget tabletScaffold;

  ResponsiveLayout({
    required this.mobileScaffold,
    required this.desktopScaffold,
    required this.tabletScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 900) {
        return tabletScaffold;
      } else {
        return tabletScaffold;
      }
    });
  }
}
