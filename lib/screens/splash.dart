import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../components/constants.dart';
import 'home/home.dart';

class Splash extends StatefulWidget {
  final box;
  final darkMode;
  Splash({Key? key, this.box, this.darkMode}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  gotoPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(Home(
      box: widget.box,
      darkMode: widget.darkMode,
    ));
  }

  late BannerAd _bottomBannerAd;
  final bool _isBottomBannerAdLoaded = false;
  @override
  void initState() {
    super.initState();
    // _createBottomBannerAd();
    gotoPage();
  }

  // void _createBottomBannerAd() {
  //   _bottomBannerAd = BannerAd(
  //     adUnitId: AdHelper.bannerAdUnitId,
  //     size: AdSize.banner,
  //     request: AdRequest(),
  //     listener: BannerAdListener(
  //       onAdLoaded: (_) {
  //         setState(() {
  //           _isBottomBannerAdLoaded = true;
  //         });
  //       },
  //       onAdFailedToLoad: (ad, error) {
  //         ad.dispose();
  //       },
  //     ),
  //   );
  //   _bottomBannerAd.load();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _bottomBannerAd.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            SvgPicture.asset(
              "assets/svg/corner.svg",
            ),
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
        ),
        bottomNavigationBar: _isBottomBannerAdLoaded
            ? Container(
                height: _bottomBannerAd.size.height.toDouble(),
                width: _bottomBannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bottomBannerAd),
              )
            : null);
  }
}
