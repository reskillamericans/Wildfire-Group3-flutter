import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wildfire/screens/dashboard/blankpage.dart';
import 'package:wildfire/screens/dashboard/dashcontainers.dart';
// import 'package:wildfire/model/report_model.dart';

class AllUpdates extends StatefulWidget {
  const AllUpdates({Key? key}) : super(key: key);

  @override
  _AllUpdatesState createState() => _AllUpdatesState();
}

class _AllUpdatesState extends State<AllUpdates> {
  int _currentIndex = 1;
  final List<Widget> index = [
    Dashboard(),
    AllUpdates(),
    Holder(),
    Holder(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
                child: Stack(children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 343.w,
                      height: 21.h,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 12.r,
                                  color: Color.fromRGBO(121, 116, 116, 1),
                                ),
                              ),
                              Text(
                                "Cleveland",
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    color: Color(0xff797474),
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
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
                                "1h ago",
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    color: Color(0xff797474),
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          SizedBox(
                            width: 157.w,
                            height: 140.h,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt dignissim sagittis sociis tincidunt metus faucibus quis. Amet et mattis mattis fames. Velit.",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(children: [
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: 343.w,
                  height: 21.h,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('fire-updates')
                                  .snapshots(),
                              builder: (BuildContext,
                                  AsyncSnapshot<QuerySnapshot> querySnapshot) {
                                if (querySnapshot.hasData) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else
                                  return ListView.builder(
                                      itemBuilder: (context, index) {
                                    querySnapshot.data!.docs
                                        .map((DocumentSnapshot) {
                                      return Container(
                                        width: 343.w,
                                        height: 240.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24.r),
                                          color: Color(0xffebebeb),
                                        ),
                                      );
                                    });
                                  });
                              })
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 300.h,
                          ),
                          SizedBox(
                            width: 343.w,
                            height: 21.h,
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            width: 343.w,
                            height: 165.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color: Color.fromRGBO(236, 236, 236, 1),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    size: 12.r,
                                    color: Color.fromRGBO(121, 116, 116, 1),
                                  ),
                                ),
                                Text(
                                  "Cleveland",
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      color: Color(0xff797474),
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
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
                                  "1h ago",
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      color: Color(0xff797474),
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 157.w,
                                  height: 140.h,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt dignissim sagittis sociis tincidunt metus faucibus quis. Amet et mattis mattis fames. Velit.",
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 136.w,
                                  height: 140.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.r),
                                  ),
                                  child: Image(
                                    image: AssetImage('assets/↳ 🖼 Image.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ])),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Image(image: AssetImage('assets/firebutton.png')),
          onPressed: () {},
          backgroundColor: Color(0xff797474),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 25.r,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/updatebell.png',
                ),
              ),
              label: "Update",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/aliveicon.png')),
              label: "I\'m Alive",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      designSize: Size(375, 667),
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
