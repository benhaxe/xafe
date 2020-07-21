import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:xafe/src/components/form_fields/src/helpers/amount_input_formatter.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/res/values/styles/text_styles.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';

///
// ignore: must_be_immutable
class XafeBudgetAmountFormField extends StatelessWidget {
  final TextEditingController controller;

  ///
  XafeBudgetAmountFormField({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.insetsSymetric(horizontal: 48.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          LengthLimitingTextInputFormatter(9),
          WhitelistingTextInputFormatter.digitsOnly,
          AmountFormatter()
        ],
        controller: controller,
        style: textStyleExtraBold(
          context,
          fontColor: kColorDeepBlue,
          fontSize: 32,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: context.insetsSymetric(vertical: 16.0),
          suffixText: '\u{20A6}',
          suffixStyle: textStyleBold(
            context,
            fontSize: 20,
            fontColor: kColorDeepBlue,
          ),
        ),
      ),
    );
  }
}
