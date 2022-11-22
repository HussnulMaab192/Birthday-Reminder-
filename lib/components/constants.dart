import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text heading({required String text, double fontsize = 25}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          letterSpacing: .65),
    ),
  );
}

Text subHeading({required String text}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          letterSpacing: .5),
    ),
  );
}

const Color bluishClr = Color(0xff4e5ae8);
const Color yellowClr = Color(0xffffb746);
const Color pickClr = Color(0xffff4667);
const Color white = Color(0xffF2F2F2);
const Color primaryClr = bluishClr;
const Color darkgreyClr = Color(0xff121212);
const Color darkHeaderClr = Color(0xff424242);
