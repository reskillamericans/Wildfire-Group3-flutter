import 'package:flutter/material.dart';

class Holder extends StatelessWidget {
  const Holder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Place Holder Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
