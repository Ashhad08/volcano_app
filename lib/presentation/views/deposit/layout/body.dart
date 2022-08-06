import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/chain_number_card.dart';
import 'widgets/deposit_card.dart';
import 'widgets/details_container.dart';
import 'widgets/time_line_row.dart';

class DepositViewBody extends StatelessWidget {
  const DepositViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.only(top: 77, bottom: 24),
                child: TimeLineRow(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.8 - 80,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(39)),
                            gradient: LinearGradient(
                              colors: [Color(0xff1251B2), Color(0xff092959)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                      ),
                    ),
                    const Positioned(
                        top: 10,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: DepositCard(),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8 - 190,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: const [
                    Positioned(
                      bottom: 0,
                      left: 20,
                      right: 20,
                      child: DetailsContainer(),
                    ),
                    Positioned(top: 5, child: ChainNumberCard())
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
