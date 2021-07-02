import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Positioned(
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          SizedBox(
                            width: 343,
                            height: 21,
                            child: Text(
                              "Recent Updates",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Color(0xffebebeb),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 16,
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
                                        size: 15,
                                        color: Color.fromRGBO(121, 116, 116, 1),
                                      ),
                                    ),
                                    Text(
                                      "Cleveland",
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          color: Color(0xff797474),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      width: 3,
                                      height: 3,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff797474),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "1h ago",
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          color: Color(0xff797474),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  width: 293,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...",
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 293,
                                  height: 141,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
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
                  ),
                  Positioned(
                    top: 350,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 343,
                          height: 23,
                          child: Text(
                            "Safety Measures",
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                color: Color(0xff333333),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Color(0xffebebeb),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 150,
                                height: 160,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt dignissim sagittis sociis tincidunt metus faucibus quis. Amet et mattis mattis fames. Velit.",
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
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
                  ),
                  Positioned(
                    left: 269,
                    top: 506,
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Stack(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff797474),
                                width: 2,
                              ),
                              color: Color(0xffc3c7d2),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 45,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/firebutton.png'),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
