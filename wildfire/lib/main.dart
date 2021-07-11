import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wildfire/Screens/Auth_screens/Register.dart';
import 'package:wildfire/Screens/Auth_screens/login.dart';
import 'package:wildfire/Screens/Auth_screens/reset.dart';
import 'package:wildfire/Screens/Dashboard/blankpage.dart';
import 'package:wildfire/Screens/Dashboard/dashcontainers.dart';
import 'package:wildfire/Screens/intro/on_boarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          '/': (context) => MyHomePage(),
          '/SplashScreen': (context) => SplashScreen(),
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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container();
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return SplashScreen();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
