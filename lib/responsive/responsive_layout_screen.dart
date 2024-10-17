import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenlayout;
  final Widget mobileScreenlayout;

  const ResponsiveLayout({
    Key? key,
    required this.webScreenlayout,
    required this.mobileScreenlayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webScreenlayout;
        } else {
          return mobileScreenlayout;
        }
      },
    );
  }
}
