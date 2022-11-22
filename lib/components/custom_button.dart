import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget myButton({required String text, required void Function()? onPressed}) {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            const Color(0xff3DC9B8).withOpacity(0.62)),
        minimumSize: MaterialStateProperty.all(Size(360, Get.height * 0.07)),
        // Background color
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
      ));
}

Widget defaultTextField({
  required TextEditingController controller,
  String? Function(String?)? validator,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextFormField(
      controller: controller,
      validator: validator,
    ),
  );
}
