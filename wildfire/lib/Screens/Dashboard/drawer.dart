import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wildfire/Screens/Dashboard/Navigation.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric (horizontal: 20);
  @override
  Widget build(BuildContext context ){
    return Drawer(
      child: Material(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 17),
            buildMenuItem(
              text: "Home",
              onClicked: () => selectedItem(context, 0),
              Navigator.pushNamed(context, '/PlaceHolder')
            ),
            const SizedBox(height: 17),
            buildMenuItem(
              text: "Updates",
              onClicked: () => selectedItem(context, 1),
                Navigator.pushNamed(context, '/PlaceHolder')
            ),
            const SizedBox(height: 17),
            buildMenuItem(
              text: "I\'m Alive",
              onClicked: () => selectedItem(context, 2),
                Navigator.pushNamed(context, '/PlaceHolder')
            ),
            const SizedBox(height: 17),
            buildMenuItem(
              text: "Search",
              onClicked: () => selectedItem(context, 3),
                Navigator.pushNamed(context, '/PlaceHolder')
            ),
          ],
        ),
      ),
    );
  }


  Widget buildMenuItem({
    required String text,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;

    return ListTile(
      title: Text(text, style: GoogleFonts.openSans(
          textStyle: TextStyle (fontSize: 15)),
      onTap:onClicked,
    ),
    ); //ListTile
  }


  void selectedItem(BuildContext  context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>PlaceHolder(),
        ));
    break;
    case 1:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>PlaceHolder(),
    ));
    break;
    case 2:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>PlaceHolder(),
    ));
    break;
    case 3:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>PlaceHolder(),
    ));
    break;

  }
  }
}
