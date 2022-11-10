import 'package:birthday_reminder/components/constants.dart';
import 'package:birthday_reminder/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset(
          "assets/svg/corner.svg",
          color: Colors.teal.withOpacity(0.5),
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
            myButton(text: "Get Started", onPressed: () {})
          ],
        ),
      ]),
    );
  }
  // hell0 with new window !

}
