import 'package:flutter/material.dart';
import 'package:xafe/app/budget/presentation/widgets/budget_tracking_card.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.insetsSymetric(horizontal: 8.0),
      child: Column(
        children: [
          BudgetTrackingCard(),
          YMargin(40),
          Container(
            padding: context.insetsSymetric(horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Last Expense',
                  style: textStyleExtraBold(
                    context,
                    fontColor: kColoDark,
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: textStyleExtraBold(
                      context,
                      fontColor: kColorDeepBlue,
                      fontSize: kDimen16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
