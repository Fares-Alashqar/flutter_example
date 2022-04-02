// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                        Icons.email,
                        color: Colors.green,
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.green))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password, color: Colors.green),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.green))),
                ),
                // ignore: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
                Container(
                  margin: EdgeInsets.all(15),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Center(
                    child: Row(children: [
                      Text(
                        "If you have account",
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
                          Navigator.of(context).pushNamed("Login");
                        },
                        child: Text(
                          "Click Here",
                          style: TextStyle(color: Colors.green, fontSize: 17),
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
                    "      SignUp      ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
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
