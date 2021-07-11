import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wildfire/Screens/Auth_screens/Register.dart';
import 'package:wildfire/Screens/Auth_screens/login.dart';
import 'package:wildfire/Screens/Auth_screens/reset.dart';
import 'package:wildfire/Screens/Dashboard/blankpage.dart';
import 'package:wildfire/Screens/Dashboard/dashcontainers.dart';
import 'package:wildfire/Screens/intro/on_boarding.dart';
import 'Screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(WildFire());
}


class WildFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/OnBoarding': (context) => OnBoarding(),
          '/Dashboard': (context) => Dashboard(),
          '/Holder': (context) => Holder(),
          '/LoginScreen': (context) => LoginScreen(),
          '/SignUpScreen': (context) => SignUpScreen(),
          '/ResetScreen': (context) => ResetScreen(),
        },
      ),
      designSize: const Size(375, 667),
    );
  }
}

