import 'package:flutter/material.dart';

import 'package:volcano_app/configurations/font_end.dart';

import 'widgets/assets_card.dart';
import 'widgets/cash_operations_row.dart';
import 'widgets/history_records_container.dart';
import 'widgets/my_app_bar_Container.dart';

class AssetViewBody extends StatelessWidget {
  const AssetViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontEndConfigs.kWhiteColor,
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: MyAppBarContainer(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: Column(
                        children: const [
                          CashOperationsRow(),
                          SizedBox(
                            height: 20,
                          ),
                          HistoryRecordsContainer()
                        ],
                      ),
                    ),
                  ),
                  const Positioned(top: 0, child: AssetsCard()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
