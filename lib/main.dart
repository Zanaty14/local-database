import 'package:flutter/material.dart';
import 'package:sharepreferences/screens/control_screen.dart';
import 'package:sharepreferences/screens/home_screen.dart';
import 'package:sharepreferences/screens/login_screen.dart';
import 'package:sharepreferences/screens/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ControlScreen (),

    );
  }
}