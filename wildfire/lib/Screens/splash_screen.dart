import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:wildfire/Screens/Auth_screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    Timer(Duration(seconds: 3), route);
    super.initState();
  }

  route() => Navigator.pushNamed(context, '/OnBoarding');

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      if (auth.currentUser == null) {
        Navigator.pushNamed(context, '/LoginScreen');
      } else {
        Navigator.pushNamed(context, '/OnBoarding');
      }
    });

    return ScreenUtilInit(
      builder: () => MaterialApp(
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
                  Image.asset(
                    'assets/logo.png',
                    width: 150.w,
                    height: 150.h,
                  ),
                  Text(
                    'Spark',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 34.sp,
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
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
