import 'package:birthday_reminder/components/constants.dart';
import 'package:birthday_reminder/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../welcome/welcome_on_board.dart';

class Home extends StatefulWidget {
  final box;
  final darkMode;
  const Home({Key? key, this.box, this.darkMode}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Stack(children: [
        SvgPicture.asset(
          "assets/svg/corner.svg",
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180.h,
              width: Get.width,
              child: Image.asset(
                "assets/pics/home.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            heading(text: "Get Things Done With TODO", fontsize: 18),
            SizedBox(
              height: 20.h,
            ),
            subHeading(text: "Dreams Do'nt Work Unless YOU do "),
            SizedBox(
              height: 80.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.w),
              child: myButton(
                  text: "Get Started",
                  onPressed: () {
                    Get.to(WelcomeOnBoard(
                      box: widget.box,
                      darkMode: widget.darkMode,
                    ));
                  }),
            )
          ],
        ),
      ]),
    );
  }
}
