import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wildfire/Screens/model.dart';



class Template extends StatelessWidget {
  String image, title, description;
  int currentIndex;

  Template(
      {required this.image,
        required this.title,
        required this.description,
        required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  getSlide().length, (index) => dotIndicator(index)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              title,
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
              description,
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
        ],
      ),
    );
  }

  Container dotIndicator(
      int index,
      ) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }
}
