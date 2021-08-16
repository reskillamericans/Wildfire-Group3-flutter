import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wildfire/Screens/Dashboard/blankpage.dart';
import 'package:wildfire/screens/all_updates/all_updates.dart';
import 'package:wildfire/screens/home.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List<Widget> _navigation = [
    Home(),
    AllUpdates(),
    Holder(),
    Holder(),
  ];

  @override
  Widget build(BuildContext context) {
    return //ScreenUtilInit(
      //builder: () => 
      new Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 49.h,
        //   backgroundColor: Colors.white,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Home',
        //         style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 18.sp,
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 65.0),
        //         child: SvgPicture.asset('assets/logos.svg'),
        //       ),
        //     ],
        //   ),
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        // drawer: Drawer(
        //   child: Material(
        //     child: ListView(
        //       children: <Widget>[],
        //     ),
        //   ),
        // ),
        body: _navigation.elementAt(_currentIndex),
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
          onTap: (index) {
            setState(() {
              _currentIndex =index;
            });
          },
        ),
      );
      // designSize: Size(375, 667);
    
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
