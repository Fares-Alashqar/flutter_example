// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

// ignore: camel_case_types
class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "images/image2.jpg",
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
                child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("Login");
                  },
                  child: Text(
                    "      Continue      ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ))
              ],
            )),
          )
        ],
      ),
    );
  }
}
