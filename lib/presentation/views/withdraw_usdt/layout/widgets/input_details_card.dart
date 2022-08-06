import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';

import 'add_new_address_bottom_sheet.dart';

class InputDetailsCard extends StatelessWidget {
  const InputDetailsCard({
    Key? key,
    required this.addressLabel,
    required this.addressHint,
    required this.quantityLabel,
    required this.quantityHint,
    required this.transactionFees,
    required this.addArrivalQuantity,
  }) : super(key: key);
  final String addressLabel;
  final String addressHint;
  final String quantityLabel;
  final String quantityHint;
  final int transactionFees;
  final bool addArrivalQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: FrontEndConfigs.kWhiteColor, boxShadow: [
        FrontEndConfigs.kInnerShadow,
        FrontEndConfigs.kDropShadow
      ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 24, right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    text: addressLabel,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  style: const TextStyle(
                    fontFamily: "Segoe UI",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  cursorColor: const Color(0xff1251B2),
                  decoration: InputDecoration(
                      hintText: addressHint,
                      hintStyle: const TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: 15,
                        color: Color(0xff575756),
                        fontWeight: FontWeight.w500,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/scan.svg",
                            height: 24,
                            width: 22,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return const AddNewAddressBottomSheet();
                                  });
                            },
                            child: SvgPicture.asset(
                              "assets/icons/note_add.svg",
                              height: 24,
                              width: 22,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xff8E8C8C).withOpacity(0.26)),
                ),
                const SizedBox(
                  height: 21,
                ),
                TextWidget(
                    text: quantityLabel,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  style: const TextStyle(
                    fontFamily: "Segoe UI",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  cursorColor: const Color(0xff1251B2),
                  decoration: InputDecoration(
                      hintText: quantityHint,
                      hintStyle: const TextStyle(
                        fontFamily: "Segoe UI",
                        fontSize: 12,
                        color: Color(0xff575756),
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xff8E8C8C).withOpacity(0.26)),
                ),
                const SizedBox(
                  height: 13,
                ),
                const TextWidget(
                    text: "Available 0.00 USDT",
                    fontSize: 13,
                    textColor: Color(0xff575756),
                    fontWeight: FontWeight.w500),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(0xff707070),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 36, left: 15, right: 25, bottom: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TextWidget(
                        text: "Transaction Fees",
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                    const Spacer(),
                    TextWidget(
                        text: "$transactionFees USDT",
                        fontSize: 19,
                        textColor: const Color(0xff575756),
                        fontWeight: FontWeight.w600),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                addArrivalQuantity
                    ? const TextWidget(
                        text: "Arrival quantity",
                        fontSize: 19,
                        fontWeight: FontWeight.w600)
                    : const SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
