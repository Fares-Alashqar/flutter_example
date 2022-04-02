// ignore: duplicate_ignore
// ignore: file_names
// ignore: file_names
// ignore: file_names, unused_import
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          "Home Page",
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      // ignore: prefer_const_constructors
    );
  }
}
