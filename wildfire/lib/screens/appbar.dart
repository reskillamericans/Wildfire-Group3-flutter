import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wildfire/Screens/intro/on_boarding.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Center(
              child: Text(
                'Dashboard',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoarding(),
                    ),
                    (route) => false);
              },
              icon: Icon(
                Icons.fire_extinguisher_rounded,
                color: Colors.yellow.shade800,
              ),
            ),
          ],
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
              SvgPicture.asset('assets/logos.svg'),
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
