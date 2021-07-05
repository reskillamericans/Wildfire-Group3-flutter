import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wildfire/model/model.dart';

class Template extends StatelessWidget {
  String image, title, description;
  int currentIndex;

  Template(
      {required this.image,
      required this.title,
      required this.description,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 41.w),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  width: 293.w,
                  height: 338.h,
                  child: Image.asset(image),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  // width: 40.w,
                  // height: 10.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 116.5.w,
                  ),
                  child: Row(
                    children: List.generate(
                        getSlide().length, (index) => dotIndicator(index)),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 283.w,
                  height: 32.h,
                  child: Text(
                    title,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp,
                        height: 1,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 293.w,
                  height: 85.h,
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container dotIndicator(
    int index,
  ) {
    return Container(
      height: 10.h,
      width: 10.w,
      margin: EdgeInsets.only(right: 5.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }
}
