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
