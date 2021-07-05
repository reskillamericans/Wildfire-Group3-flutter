import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wildfire/Screens/Dashboard/blankpage.dart';

class Holder extends StatelessWidget {
  const Holder({Key? key}) : super(key: key);

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
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              ),
              SvgPicture.asset('assets/logos.svg')
            ],
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Text(
            'Place Holder Page',
            style: TextStyle(fontSize: 30.sp),
          ),
        ),
      ),
      designSize: Size(375, 667),
    );
  }
}
