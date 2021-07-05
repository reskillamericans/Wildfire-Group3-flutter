import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        appBar: AppBar(
          toolbarHeight: 49.h,
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
              SvgPicture.asset('assets/Logo.svg')
            ],
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(),
      ),
      designSize: Size(375, 667),
    );
  }
}
