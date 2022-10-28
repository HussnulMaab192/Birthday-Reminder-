import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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

    void initState() {
      super.initState();
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Home())));
    }
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
                  Text(
                    "Birthday Reminder ",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: .65),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "We Remind You ! Your Special  Events ",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: .5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
