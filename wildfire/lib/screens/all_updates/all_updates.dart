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
                          return Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 16.h,
                                ),
                                SizedBox(height: 8.h),
                                Container(
                                  width: 343.w,
                                  height: 240.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.r),
                                    color: Color(0xffebebeb),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                child: Icon(
                                                  Icons.location_on_outlined,
                                                  size: 12.r,
                                                  color: Color.fromRGBO(
                                                      121, 116, 116, 1),
                                                ),
                                              ),
                                            ),
                                            Text(updates![index].location),
                                            SizedBox(width: 5.w),
                                            Container(
                                              width: 3.w,
                                              height: 3.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff797474),
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              timeago.format(DateTime.now()
                                                  .subtract(Duration(hours: 1))),
                                            ),
                                          ]),
                                      SizedBox(height: 4.h),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: SizedBox(
                                          width: 293.w,
                                          height: 60.h,
                                          child: Text(updates[index].detail),
                                        ),
                                      ),
                                      Container(
                                        width: 293.w,
                                        height: 141.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24.r),
                                        ),
                                        child: Image(
                                          image:
                                              AssetImage('assets/dashfire.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  }
                  return CircularProgressIndicator();
                })));
  }
}
