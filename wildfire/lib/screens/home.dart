import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 343.w,
                      height: 21.h,
                      child: Text(
                        "Recent Updates",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
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
                            width: 293.w,
                            height: 60.h,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 293.w,
                            height: 141.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/dashfire.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 300.h,
                  ),
                  SizedBox(
                    width: 343.w,
                    height: 21.h,
                    child: Text(
                      "Safety Measures",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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
                            image: AssetImage('assets/dashsafety.png'),
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
      ),
    );
  }
}
