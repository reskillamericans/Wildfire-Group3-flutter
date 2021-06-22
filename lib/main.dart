import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    CollectionReference WILDFIRE_UPDATES =
    FirebaseFirestore.instance.collection('WILDFIRE_UPDATES');
    return FutureBuilder<DocumentSnapshot>(
      future: WILDFIRE_UPDATES.doc().get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Center (child: Text("Something went wrong"),);
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
          snapshot.data!.data() as Map<String, dynamic>;
          return ListTile(
              title: Text("${data['title']}"),
              subtitle: Text("${data['body']}")
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}
