// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          // ignore: avoid_unnecessary_containers
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
                child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextField(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      hintText: "User Name",
                      hintStyle: TextStyle(color: Colors.orange),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.orange))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password, color: Colors.orange),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.orange),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.orange))),
                ),
                // ignore: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
                Container(
                  margin: EdgeInsets.all(15),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Center(
                    child: Row(children: [
                      Text(
                        "If you haven't account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("Signup");
                        },
                        child: Text(
                          "Click Here",
                          style: TextStyle(color: Colors.orange, fontSize: 17),
                        ),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("HomePage");
                  },
                  child: Text(
                    "      Login      ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
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
