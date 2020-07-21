import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xafe/src/res/res.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';

class XafeCard extends StatelessWidget {
  final Widget child;

  const XafeCard(
    this.child, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kColorWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 1.8,
      shadowColor: kColorWhite,
      child: Padding(
        padding: context.insetsAll(16.0),
        child: child,
      ),
    );
  }
}
