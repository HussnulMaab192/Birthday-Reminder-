import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String lable;
  final Function()? ontap;

  const MyButton({Key? key, required this.lable, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 120.w,
        height: 45.h,
        decoration: BoxDecoration(
          color: const Color(0xff7DD7CD),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Center(
          child: Text(
            lable,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
