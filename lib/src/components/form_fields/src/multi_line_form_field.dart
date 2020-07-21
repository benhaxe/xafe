import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/res/values/styles/form_style.dart';
import 'package:xafe/src/res/values/styles/text_styles.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';

///
// ignore: must_be_immutable
class XafeMultiLineFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  ///
  XafeMultiLineFormField({
    Key key,
    this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.top,
      textAlign: TextAlign.left,
      expands: true,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: controller,
      style: textStyleRegular(
        context,
        fontColor: kColorBlack,
        fontSize: 14.0,
      ),
      decoration: InputDecoration(
        border: xafeMultiLineBorderStyle,
        disabledBorder: xafeMultiLineBorderStyle,
        enabledBorder: xafeMultiLineBorderStyle,
        errorBorder: xafeMultiLineBorderStyle,
        focusedBorder: xafeMultiLineBorderStyle,
        focusedErrorBorder: xafeMultiLineBorderStyle,
        filled: true,
        fillColor: kColorWhite,
        hintText: hintText ?? 'Enter here...',
        hintStyle: GoogleFonts.muli(
          textStyle: Theme.of(context).textTheme.headline1,
          fontSize: context.fontSize(kDimen12),
          fontWeight: FontWeight.w400,
          height: 1.4,
        ),
      ),
    );
  }
}
