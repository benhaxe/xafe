import 'package:flutter/material.dart' show Icons, IconButton;
import 'package:flutter/widgets.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/navigation/navigation.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

class ExpensesAppBar extends StatelessWidget {
  const ExpensesAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context
          .insetsSymetric(
            horizontal: 16.0,
          )
          .add(context.insetsOnly(
            top: 60,
            bottom: 28,
          )),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [kColorDeepBlue, kColorLightBlue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3, 0.8],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Add Expense',
              style: textStyleExtraBold(
                context,
                fontColor: kColorWhite,
              ),
            ),
          ),
          IconButton(
            onPressed: () => popView(context),
            icon: Icon(
              Icons.cancel,
              color: kColorWhite,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}
