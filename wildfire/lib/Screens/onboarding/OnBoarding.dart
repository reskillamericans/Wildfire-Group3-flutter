import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wildfire/Screens/onboarding/model.dart';
import 'package:wildfire/Screens/onboarding/template.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

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

  List<SlideModel> slide = getSlide();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: onchanged,
              itemCount: slide.length,
              itemBuilder: (context, index) {
                return Template(
                    image: slide[index].getImage(),
                    title: slide[index].getTitle(),
                    description: slide[index].getDescription(),
                    currentIndex: currentIndex);
              }),
        ),
        Container(

          child: Padding(padding: const EdgeInsets.only(bottom: 20),

            child: ElevatedButton(
              onPressed: () {
                if (currentIndex == slide.length - 1) {}
                controller.nextPage(
                    duration: Duration(microseconds: 100),
                    curve: Curves.bounceIn);
              },
              child: Text(
                currentIndex == slide.length - 1 ? "Get Started" : "Next",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
      ]),
    );
  }
  onchanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
