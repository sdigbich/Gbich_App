import 'package:flutter/material.dart';
import 'package:g_app/Articles.dart';
import 'package:g_app/delayed_animation.dart';
import 'package:g_app/Welcome_Page.dart';

const d_red = const Color(0xFFE9717D);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gbich App',
      home: WelcomePage(),
    );
  }
}

