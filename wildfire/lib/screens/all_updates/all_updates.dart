import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wildfire/model/report_model.dart';
import 'package:timeago/timeago.dart' as timeago;

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
        body: StreamBuilder<QuerySnapshot>(
            stream: _reportStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var updates =
                    snapshot.data?.docs.map((e) => Report.fromJson(e)).toList();
                return ListView.builder(
                    itemCount: updates?.length,
                    itemBuilder: (context, index) {
                      print(updates.toString());

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: Color(0xffebebeb),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 2.0),
                                              child: Container(
                                                child: Icon(
                                                  Icons.location_on_outlined,
                                                  size: 12.r,
                                                  color: Color.fromRGBO(
                                                      121, 116, 116, 1),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                  updates![index].location),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: 3.w,
                                                height: 3.h,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xff797474),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              timeago.format(
                                                  updates[index].time.toDate()),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 200.w,
                                              child:
                                                  Text(updates[index].detail)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                        height: 150.h,
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/dashfire.png'),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    });
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
