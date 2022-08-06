import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:volcano_app/presentation/elements/Text_widget.dart';
import 'package:volcano_app/presentation/views/deposit/deposit.dart';
import 'package:volcano_app/presentation/views/transfer_usdt/transfer_usdt.dart';
import 'package:volcano_app/presentation/views/withdraw_usdt/withdraw_usdt.dart';

class CashOperationsRow extends StatelessWidget {
  const CashOperationsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.to(const DepositView());
            },
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 72,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xffFFF711), shape: BoxShape.circle),
                  child: Image.asset("assets/icons/deposit.png"),
                ),
                const TextWidget(
                    text: "Deposit", fontSize: 20, fontWeight: FontWeight.w600)
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(const WithdrawUSDTView());
            },
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 72,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xffFFF711), shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/icons/withdrawal.svg"),
                ),
                const TextWidget(
                    text: "Withdrawal", fontSize: 20, fontWeight: FontWeight.w600)
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(const TransferUSDTView());
            },
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 72,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xffFFF711), shape: BoxShape.circle),
                  child: SvgPicture.asset("assets/icons/transfer.svg"),
                ),
                const TextWidget(
                    text: "Transfer", fontSize: 20, fontWeight: FontWeight.w600)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
