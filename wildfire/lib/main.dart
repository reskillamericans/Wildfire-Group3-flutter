import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:wildfire/Screens/Dashboard/Navigation.dart';
import 'package:wildfire/Screens/Dashboard/dashcontainers.dart';
import 'package:wildfire/Screens/onboarding/OnBoarding.dart';
import 'package:wildfire/Screens/Splash.dart';
=======
import 'package:wildfire/Screens/intro/on_boarding.dart';
import 'package:wildfire/Screens/splash.dart';
>>>>>>> 2af4eeba3fe3ce65eee1941d95f8789dce9aaefd

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(WildFire());
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final fireUpdate= FirebaseFirestore.instance
      .collection('fire-updates');
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          StreamBuilder<QuerySnapshot>(
            stream: fireUpdate.snapshots(),
            builder: (context,snapshots){
              snapshots.data?.docs.forEach((element) {
                print("update ${element.data()}");
              });

              return Container();
            },
          )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class WildFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/OnBoarding': (context) => OnBoarding(),
        '/Dashboard': (context) => Dashboard(),
        '/Holder': (context) => Holder(),
      },
    );
  }
}
