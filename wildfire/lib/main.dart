import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wildfire/Screens/Dashboard/blankpage.dart';
import 'package:wildfire/Screens/Dashboard/dashcontainers.dart';
import 'package:wildfire/Screens/intro/on_boarding.dart';
import 'package:wildfire/Screens/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  final fireUpdate = FirebaseFirestore.instance.collection('fire-updates');
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
              builder: (context, snapshots) {
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
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/OnBoarding': (context) => OnBoarding(),
          '/Dashboard': (context) => Dashboard(),
          '/Holder': (context) => Holder(),
        },
      ),
      designSize: const Size(375, 667),
    );
  }
}
