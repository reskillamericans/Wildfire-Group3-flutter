import 'package:flutter/material.dart';
import 'package:wildfire3/signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
          title: Text(
            "Sign Up",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SignUp(),
      ),
    );
  }
}
