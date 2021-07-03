import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Holder extends StatelessWidget {
  const Holder({Key? key}) : super(key: key);

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
            SvgPicture.asset('assets/logos.svg')
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Text(
          'Place Holder Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
