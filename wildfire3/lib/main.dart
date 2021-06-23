import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(WildFire());
}

class WildFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/OnBoarding': (context) => OnBoarding(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key ? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), route);
    super.initState();
  }

  route() => Navigator.pushNamed(context, '/OnBoarding');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffDA0000),
                Color.fromRGBO(218, 0, 0, 1),
                Color.fromRGBO(255, 230, 0, 1),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Logo3.png'),
                Text(
                  'Spark',
                  style: GoogleFonts.openSans(textStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 34,
                      fontWeight: FontWeight.w700),
                  ),),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Spread like wildfire!',
                  style: GoogleFonts.openSans(textStyle: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key ? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: controller,
          onPageChanged: onchanged,
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset('assets/OnBoard.png'),
                    ),
                    Container(
                      child: Container(
                        height: 40,
                        child: PageIndicatorContainer(
                          child: PageView(
                            children: <Widget>[],
                            controller: controller,
                          ),
                          align: IndicatorAlign.center,
                          length: 3,
                          indicatorSpace: 15,
                          padding: const EdgeInsets.all(10),
                          shape: IndicatorShape.circle(size: 10),
                          indicatorColor: Color.fromRGBO(196, 196, 196, 1),
                          indicatorSelectorColor: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Tell us when you see a wildfire.',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 315,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing malesuada tellus massa risus euismod mauris. Urna leo.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Next',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 139, 0, 1),
                            padding: EdgeInsets.symmetric(
                              horizontal: 70,
                              vertical: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset('assets/Board2.png'),
                    ),
                    Container(
                      child: Container(
                        height: 40,
                        child: PageIndicatorContainer(
                          child: PageView(
                            children: <Widget>[],
                            controller: controller,
                          ),
                          align: IndicatorAlign.center,
                          length: 3,
                          indicatorSpace: 15,
                          padding: const EdgeInsets.all(10),
                          shape: IndicatorShape.circle(size: 10),
                          indicatorColor: Color.fromRGBO(196, 196, 196, 1),
                          indicatorSelectorColor: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Elit vulputate vel dui faucibus magnis.',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 315,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt habitasse id ac netus dictum volutpat tellus. Maecenas aliquam metus. ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Next',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 139, 0, 1),
                            padding: EdgeInsets.symmetric(
                              horizontal: 70,
                              vertical: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset('assets/Board3.png'),
                    ),
                    Container(
                      child: Container(
                        height: 40,
                        child: PageIndicatorContainer(
                          child: PageView(
                            children: <Widget>[],
                            controller: controller,
                          ),
                          align: IndicatorAlign.center,
                          length: 3,
                          indicatorSpace: 15,
                          padding: const EdgeInsets.all(10),
                          shape: IndicatorShape.circle(size: 10),
                          indicatorColor: Color.fromRGBO(196, 196, 196, 1),
                          indicatorSelectorColor: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'Magnis sem orci pulvinar feugiat ..',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 315,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eros, dignissim ornare pulvinar eget lectus. Nulla massa pulvinar elit id amet eget egestas suscipit sapien. Nibh tempor.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 139, 0, 1),
                            padding: EdgeInsets.symmetric(
                              horizontal: 70,
                              vertical: 10,
                            ),
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
      ]),
    );
  }

  onchanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
