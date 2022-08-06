import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontFamily: "Segoe UI",
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: const Color(0xff1251B2),
      decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          filled: true,
          fillColor: const Color(0xff8E8C8C).withOpacity(0.26)),
    );
  }
}
