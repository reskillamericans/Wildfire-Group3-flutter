import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wildfire/Screens/Dashboard/blankpage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List<Widget> _navigation = [
    Dashboard(),
    Holder(),
    Holder(),
    Holder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Home',
              style: TextStyle(color: Colors.black),
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
            children: <Widget>[
              const SizedBox(height: 17),
              buildMenuItem(
                text: "Home",
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(height: 17),
              buildMenuItem(
                text: "Updates",
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 17),
              buildMenuItem(
                text: "I\'m Alive",
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(height: 17),
              buildMenuItem(
                text: "Search",
                onClicked: () => selectedItem(context, 3),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 18,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    SizedBox(
                      width: 343,
                      height: 21,
                      child: Text(
                        "Recent Updates",
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
                                    fontSize: 11,
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
                                    fontSize: 11,
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
                                  fontSize: 14,
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
              left: 18,
              top: 300,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60),
                  ),
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
                    width: 343,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color.fromRGBO(236, 236, 236, 1),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          width: 136,
                          height: 140,
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
            // Positioned(
            //   left: 289,
            //   top: 526,
              // child: Container(
                // margin: EdgeInsets.only(left: 200),
                // width: 80,
                // height: 80,
                // child: Stack(
                  // children: [
                    // Container(
                    //   width: 80,
                    //   height: 80,
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     border: Border.all(
                    //       color: Color(0xff797474),
                    //       width: 2,
                    //     ),
                    //     color: Color(0xffc3c7d2),
                    //   ),
                    // ),
                    // Positioned.fill(
                    //   child: Align(
                    //     alignment: Alignment.center,
                    //     child: Container(
                    //       width: 45,
                    //       height: 50,
                    //       decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //           image: AssetImage('assets/firebutton.png'),
                    //         ),
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  // ],
                // ),
              // ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child:
       Image(image: AssetImage('assets/firebutton.png')) ,
      onPressed: () {},
        backgroundColor: Color(0xff797474),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
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
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  VoidCallback? onClicked,
}) {
  final color = Colors.black;

  return ListTile(
    title: Text(
      text,
      style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 15)),
    ),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Holder(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Holder(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Holder(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Holder(),
      ));
      break;
  }
}
