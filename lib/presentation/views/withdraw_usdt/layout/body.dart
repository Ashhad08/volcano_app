import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/input_details_card.dart';
import 'widgets/operation_reminder_cards.dart';
import 'widgets/chain_number_card.dart';

class WithdrawUSDTBody extends StatelessWidget {
  const WithdrawUSDTBody({Key? key}) : super(key: key);

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
                      addressLabel: "Address",
                      addressHint: "Please enter address",
                      quantityLabel: "Quantity",
                      quantityHint: "The minimum number of withdraw 10 USDT",
                      transactionFees: 2,
                      addArrivalQuantity: true),
                  SizedBox(
                    height: 14,
                  ),
                  OperationRemainderCard(
                    description:
                        'The minimum withdrawal amount for a single transaction is 10 USDT. Do not transfer USDT assets to non-USDT addresses Otherwise, they cannot be retrieved, the evening (21:00-09:00) withdrawal system will improve the risk control set level of acids and withdrawals.',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
