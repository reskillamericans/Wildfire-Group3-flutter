import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text('Home',style: TextStyle(color: Colors.black),),
            SvgPicture.asset('assets/Logo.svg')],
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
    );
  }
}
