import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return new Scaffold(
        appBar: AppBar(
          toolbarHeight: 49.h,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Updates',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65.0),
                child: SvgPicture.asset('assets/logos.svg'),
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
          child: Material(
            child: ListView(
              children: <Widget>[],
            ),
          ),
        ),
        body: Container(
            child: StreamBuilder<QuerySnapshot>(
                stream: _reportStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var updates = snapshot.data?.docs
                        .map((e) => Report.fromJson(e))
                        .toList();
                    return ListView.builder(
                        itemCount: updates?.length,
                        itemBuilder: (context, index) {
                          print(updates.toString());
                          return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 343,
                                      height: 162,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFECECEC),
                                        borderRadius: BorderRadius.circular(24),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Align(
                                          alignment: Alignment(0.2, 0.35),
                                          child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 10, 0, 0),
                                              child: Expanded(
                                                  child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(updates![index]
                                                        .location),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        updates[index].name),
                                                  ),
                                                  Flexible(
                                                      child: Text(updates[index]
                                                          .detail)),
                                                ],
                                              )))),
                                    ))
                              ]);
                        });
                  }
                  return CircularProgressIndicator();
                })));
  }
}
