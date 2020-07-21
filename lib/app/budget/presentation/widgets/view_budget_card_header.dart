import 'package:flutter/material.dart';
import 'package:xafe/src/res/res.dart';

class BudgetCardHeader extends StatelessWidget {
  final String month, year;
  final Widget headerIcon;
  final VoidCallback onHeaderTapped;
  const BudgetCardHeader({
    Key key,
    @required this.month,
    @required this.year,
    this.headerIcon,
    this.onHeaderTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                month ?? '',
                style: textStyleExtraBold(
                  context,
                  fontColor: kColorDeepBlue,
                ),
              ),
            ),
            GestureDetector(
              onTap: onHeaderTapped,
              child: headerIcon ??
                  Icon(
                    Icons.cancel,
                    size: 32,
                  ),
            )
          ],
        ),
        Text(
          year ?? '',
          style: textStyleRegular(
            context,
            fontColor: kColorPurple,
          ),
        )
      ],
    );
  }
}
