import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildfire/Screens/Dashboard/Navigation.dart';
import 'package:wildfire/Screens/Dashboard/dashcontainers.dart';

class Bottomtabs extends StatefulWidget {
  @override
  _BottomtabsState createState() => _BottomtabsState();
}

class _BottomtabsState extends State<Bottomtabs> {
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
