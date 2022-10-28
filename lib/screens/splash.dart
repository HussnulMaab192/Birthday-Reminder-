import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/constants.dart';
import 'home/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    gotoPage();
  }

  gotoPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(const Home());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            SvgPicture.asset("assets/svg/corner.svg",
                color: Colors.teal.withOpacity(0.5)),
            Positioned(
              top: 270.h,
              left: 50.w,
              child: Column(
                children: [
                  Image.asset(
                    "assets/pics/splash1.png",
                  ),
                  heading(text: "Birthday Reminder "),
                  SizedBox(
                    height: 10.h,
                  ),
                  subHeading(text: "We Remind You ! Your Special  Events "),
                ],
              ),
            ),
          ],
        ));
  }
}
