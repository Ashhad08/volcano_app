import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AuthTextField extends StatelessWidget {
  final String hintText;
  final Function(String) validator;
  final TextEditingController controller;
  // bool? isShowlabel;
  // String? labelTxt;
  bool? isShowColor;
  bool? isShowBorder;
  double? borderRadius;
  bool? isPasswordField;
  Color? color;
  IconData? preIcon;
  int? maxline;
  bool? showIcon;
  bool? suffix;
  IconData? icon;

  AuthTextField(
      {Key? key,
      required this.hintText,
      this.borderRadius = 0,
      this.isShowBorder = false,
      this.isShowColor = false,
      // this.isShowlabel = false,
      this.isPasswordField = false,
      this.color,
      this.preIcon,
      this.maxline = 1,
      // this.labelTxt,
      required this.validator,
      required this.controller,
      this.showIcon,
      this.suffix,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // CustomText(
        //     text: labelTxt!,
        //     textSize: 14,
        //     fontWeight: FontWeight.w400,
        //     textColor: Colors.black),

        TextFormField(
          maxLines: maxline,
          validator: (val) => validator(val!),
          controller: controller,
          obscureText: isPasswordField == true ? true : false,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              suffixIcon: suffix == true ?  Icon(icon):null,
              prefixIcon: showIcon == true ? Icon(preIcon) : null,
              filled: true,
              fillColor: color,
              border: isShowBorder == true
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius!),
                      borderSide:
                             BorderSide(),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius!),
                      borderSide: BorderSide.none,
                    )),
        ),
      ],
    );
  }
}
