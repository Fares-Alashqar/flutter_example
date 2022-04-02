// ignore_for_file: prefer_const_constructors, deprecated_member_use

// ignore: unnecessary_import

// ignore: avoid_web_libraries_in_flutter, unused_import
import 'PagesApp/Login.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'PagesApp/Signup.dart';
// ignore: unused_import
import 'PagesApp/HomePage.dart';
// ignore: unused_import
import 'PagesApp/welcome.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcome(),
      routes: {
        "Login": (context) => Login(),
        "Signup": (context) => SignUp(),
        "HomePage": (context) => HomePage(),
        "welcome": (context) => welcome()
      },
    );
  }
}

// ignore: use_key_in_widget_constructors

