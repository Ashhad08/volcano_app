import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffE9E9E5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Icon(
            Icons.search_rounded,
            size: 30,
            color: Color(0xff575756),
          ),
          Spacer(),
          Icon(
            Icons.arrow_right_rounded,
            size: 40,
            color: Color(0xff575756),
          )
        ],
      ),
    );
  }
}
