import 'package:flutter/material.dart';
// import 'package:wildfire3/screens/home.dart';
import 'package:wildfire3/screens/login.dart';
// import 'package:wildfire3/signUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
