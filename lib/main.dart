import 'package:flutter/material.dart';
import 'package:intagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:intagram_flutter/responsive/responsive_layout_screen.dart';
import 'package:intagram_flutter/responsive/web_screen_layout.dart';
import 'package:intagram_flutter/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScreenlayout: MobileScreenLayout(),
        webScreenlayout: WebScreenLayout(),
      ),
    );
  }
}
