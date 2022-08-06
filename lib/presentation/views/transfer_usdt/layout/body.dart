import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import '../../withdraw_usdt/layout/widgets/chain_number_card.dart';
import '../../withdraw_usdt/layout/widgets/input_details_card.dart';
import '../../withdraw_usdt/layout/widgets/operation_reminder_cards.dart';

class TransferUSDTViewBody extends StatelessWidget {
  const TransferUSDTViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Column(
                children: const [
                  ChainNumberCard(),
                  SizedBox(
                    height: 20,
                  ),
                  InputDetailsCard(
                      addressLabel: "Receiving account",
                      addressHint: "Please enter the receiving acco",
                      quantityLabel: "Transfer Quantity",
                      quantityHint:
                          "The minimum number of transfers out 10 USDT",
                      transactionFees: 0,
                      addArrivalQuantity: false),
                  SizedBox(
                    height: 14,
                  ),
                  OperationRemainderCard(
                      description:
                          "The minimum withdrawal amount for a single transaction is 10 USDT. Do not transfer USDT assets to non-USDT addresses"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
