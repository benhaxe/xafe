import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:xafe/src/components/form_fields/src/helpers/amount_input_formatter.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/res/values/styles/text_styles.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';

///
// ignore: must_be_immutable
class XafeAmountFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  ///
  XafeAmountFormField({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        LengthLimitingTextInputFormatter(9),
        WhitelistingTextInputFormatter.digitsOnly,
        AmountFormatter()
      ],
      controller: controller,
      style: textStyleExtraBold(
        context,
        fontColor: kColorPurple,
        fontSize: 32,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyleExtraBold(
          context,
          fontColor: kColorPurple,
          fontSize: 32,
        ),
        contentPadding: context.insetsSymetric(vertical: 16.0),
        suffixText: '\u{20A6}',
        suffixStyle: textStyleBold(
          context,
          fontSize: 24,
          fontColor: kColorDeepBlue,
        ),
      ),
    );
  }
}
