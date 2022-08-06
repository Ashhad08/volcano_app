
import 'package:flutter/material.dart';

class LocationDropDown extends StatefulWidget {
  String hint;
  String selectCategory;
  List listItem;

  LocationDropDown(
      {Key? key,
      required this.hint,
      required this.listItem,
      required this.selectCategory})
      : super(key: key);

  @override
  State<LocationDropDown> createState() => _LocationDropDownState();
}

class _LocationDropDownState extends State<LocationDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 54,
        decoration: BoxDecoration(
            color: Colors.white,
     ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: DropdownButton(
            key: UniqueKey(),
            underline: const SizedBox(),
            hint: Text(
              widget.hint,
              style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff4E4E4E),
                  fontWeight: FontWeight.w500),
            ),
            isExpanded: true,
            value: widget.selectCategory == null ? '' : widget.selectCategory,
            iconEnabledColor: const Color(0xff7B7777),
            iconDisabledColor: const Color(0xff7B7777),
            onChanged: (newValue) {
              setState(() {
                widget.selectCategory = newValue.toString();
              });
            },
            items: widget.listItem.map((valueItem) {
              return DropdownMenuItem(
                  value: valueItem, child: Text((valueItem)));
            }).toList(),
          ),
        ));
  }
}
