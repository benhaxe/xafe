import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xafe/src/res/values/colors/colors.dart';
import 'package:xafe/src/utils/extensions/platform_extensions.dart';

class XafeSwitch extends StatelessWidget {
  final Function(bool value) onChanged;
  const XafeSwitch({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.isAndroid
        ? Switch(
            value: false,
            activeColor: kColorPurple,
            inactiveTrackColor: kColorPurple,
            inactiveThumbColor: kColorWhite,
            onChanged: onChanged,
          )
        : CupertinoSwitch(
            value: false,
            activeColor: kColorPurple,
            trackColor: kColorPurple,
            onChanged: onChanged,
          );
  }
}
