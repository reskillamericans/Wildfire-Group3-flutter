import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), route);
    super.initState();
  }

  route() => Navigator.pushNamed(context, '/OnBoarding');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffDA0000),
                Color.fromRGBO(218, 0, 0, 1),
                Color.fromRGBO(255, 230, 0, 1),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Logo3.png'),
                Text(
                  'Spark',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 34,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Spread like wildfire!',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
