import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        style: const TextStyle(
          fontFamily: "Segoe UI",
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: const Color(0xff1251B2),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            prefixIcon: const Icon(
              Icons.search_rounded,
              color: Color(0xff575756),
            ),
            hintText: 'Search Circle',
            hintStyle: const TextStyle(
              fontFamily: "Segoe UI",
              fontSize: 16,
              color: Color(0xff575756),
              fontWeight: FontWeight.w600,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color(0xff8E8C8C).withOpacity(0.26)),
      ),
    );
  }
}
