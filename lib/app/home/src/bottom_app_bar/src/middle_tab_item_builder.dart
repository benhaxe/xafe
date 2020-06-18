import 'package:flutter/material.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/res/values/styles/text_styles.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

class BuildTabMiddleItem extends StatelessWidget {
  const BuildTabMiddleItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          YMargin(4),
          Text(
            '',
            style: textStyleRegular(context).copyWith(color: kColorDeepBlue),
          ),
        ],
      ),
    );
  }
}
