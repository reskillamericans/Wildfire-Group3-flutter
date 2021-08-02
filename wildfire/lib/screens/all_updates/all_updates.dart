import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Scaffold(
      drawer: Drawer(
        child: Material(
          child: ListView(
            children: <Widget>[],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
              child: Stack(children: [
            Container(
              child: Column(children: [
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: 343.w,
                  height: 21.h,
                ),
                SizedBox(height: 8.h),
                Container(
                  width: 293.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    color: Color(0xffebebeb),
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            StreamBuilder<QuerySnapshot>(
                                stream: _reportStream,
                                builder: (BuildContext context,
                                    AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (snapshot.hasError) {
                                    return Text('Oops..Something went wrong');
                                  }
                      
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return CircularProgressIndicator();
                                  }
                                  return ListView.builder(
                                      itemBuilder: (context, index) {
                                    snapshot.data!.docs
                                        .map((DocumentSnapshot document) {
                                      Report as Map<String, dynamic>;
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 30.h,
                                          ),
                                          SizedBox(
                                            width: 343.w,
                                            height: 21.h,
                                          ),
                                          SizedBox(height: 8.h),
                                          Container(
                                            width: 343.w,
                                            height: 65.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24.r),
                                              color: Color.fromRGBO(
                                                  236, 236, 236, 1),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.w,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons.location_on_outlined,
                                                    size: 12.r,
                                                    color: Color.fromRGBO(
                                                        121, 116, 116, 1),
                                                  ),
                                                ),
                                                Container(
                                                    width: 136.w,
                                                    height: 140.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.r),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  });
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ])),
        ),
      )
    );
  }
}

Widget buildMenuItem({
  required String text,
  VoidCallback? onClicked,
}) {
  // final color = Colors.black;

  return ListTile(
    title: Text(
      text,
      style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 13.sp)),
    ),
    onTap: onClicked,
  );
}
