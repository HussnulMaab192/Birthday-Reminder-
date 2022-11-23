import 'package:birthday_reminder/components/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../components/constants.dart';
import '../../components/custom_button.dart';
import 'Home/home_page.dart';

class WelcomeOnBoard extends StatefulWidget {
  final box;
  final darkMode;
  const WelcomeOnBoard({Key? key, this.box, this.darkMode}) : super(key: key);

  @override
  State<WelcomeOnBoard> createState() => _WelcomeOnBoardState();
}

class _WelcomeOnBoardState extends State<WelcomeOnBoard> {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    heading(text: "Welcome Onboard !"),
                    subHeading(text: "Let’s Help you meet up your Tasks")
                  ],
                )),
            SizedBox(
              height: 30.h,
            ),
            Column(
              children: [
                customTextField("Enter your full name"),
                customTextField("Enter your Email"),
                customTextField("Enter Password"),
                customTextField("Confirm Password"),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.w),
              child: myButton(
                  text: "Register",
                  onPressed: () {
                    Get.to(
                      HomePage(
                        box: widget.box,
                        darkMode: widget.darkMode,
                      ),
                    );
                  }),
            )
          ],
        ),
      ]),
    );
  }
}
