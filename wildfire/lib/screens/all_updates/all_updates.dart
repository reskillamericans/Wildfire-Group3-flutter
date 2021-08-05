import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wildfire/model/report_model.dart';

class AllUpdates extends StatefulWidget {
  const AllUpdates({Key? key}) : super(key: key);

  @override
  _AllUpdatesState createState() => _AllUpdatesState();
}

class _AllUpdatesState extends State<AllUpdates> {
  final Stream<QuerySnapshot> _reportStream =
      FirebaseFirestore.instance.collection('fire-updates').snapshots();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: _reportStream,
            builder: (context, snapshot){
                if(snapshot.hasData){
                  var updates = snapshot.data?.docs.map((e) => Report.fromJson(e)).toList();
                  return ListView.builder(itemCount:updates?.length, itemBuilder:(context, index) {
                  print(updates.toString());
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(updates![index].location),
                      Text(updates[index].name),
                      Flexible(child: Text(updates[index].detail))
                    ],
                  );
                  }
                  );
                }
                return CircularProgressIndicator();
            }
        ));}
}
