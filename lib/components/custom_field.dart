import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customTextField(String txt) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.h),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(35)),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: txt,
          border: InputBorder.none,
          hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: .6),
          ),
        ),
      ),
    ),
  );
}
