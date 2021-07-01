import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(WildfireApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
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

 @override
  _WildfireAppState createState() => _WildfireAppState();

class _WildfireAppState extends State<WildfireApp> {
  late String name, phoneNumber, location, detail, time;


    CollectionReference fireUpdate = FirebaseFirestore.instance.collection('fire-updates');


  getName(name) {
    this.name = name;
  }

  getPhoneNumber(phone-number) {
    this.phoneNumber = phoneNumber;
  }

  getLocation(location) {
    this.location = location;
  }

  getDetail(detail) {
    this.detail = detail;
  }

  getTime(time) {
    this.time = time;
  }

  
void readData(){
    FirebaseFirestore.instance.collection("fire-updates").doc().get();
      print("DATA ['name']}");
      print("DATA ['phone-number']}");
      print("DATA ['location']}");
      print("DATA ['detail']}");
      print("DATA ['time']}");
    }
 }

   Map<String,dynamic> toJson(){
      return{
      "name": name,
      "phone-number": phoneNumber,
      "location": location,
      "detail": detail,
      "time": time,
    };
  
  }

void createData(){
    FirebaseFirestore.instance.collection('fire-updates').doc().set({
      'name': 'John Doe',
      'phone-number': '2060000000',
      'location': 'Northwest',
      'detail': 'Raging wildfire off I-90',
      'time':   '2:06PM'
    });
    FirebaseFirestore.instance.collection('fire-updates').doc().set({
      'name': 'Jane Doe',
      'phone-number': '2130000000',
      'location': 'California',
      'detail': 'Wildfire caused by campfire.',
      'time':   '2:13PM'
    });

  
  }


void updateData(){
    FirebaseFirestore.instance.collection('fire-updates').doc().update({
      'detail': 'Raging wildfire off I-90. Notifiied authorities. DNR responded.'
    });
  }

  void deleteData(){
    FirebaseFirestore.instance.collection('fire-updates').doc().delete();
  }