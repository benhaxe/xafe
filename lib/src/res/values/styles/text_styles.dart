import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

import '../values.dart';

///Text styling for [extra bold] texts.
TextStyle textStyleExtraBold(
  BuildContext context, {
  double fontSize = kDimen24,
  Color fontColor,
}) =>
    GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(fontSize),
        letterSpacing: .8,
        color: fontColor,
        fontWeight: FontWeight.w800,
      ),
    );

///Text styling for [bold] texts.
TextStyle textStyleBold(
  BuildContext context, {
  double fontSize = kDimen16,
  Color fontColor,
}) =>
    GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(fontSize),
        letterSpacing: .8,
        color: fontColor,
        fontWeight: FontWeight.w700,
      ),
    );

///Text styling for [regular] texts.
TextStyle textStyleRegular(
  BuildContext context, {
  double fontSize = kDimen14,
  Color fontColor,
}) =>
    GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(fontSize),
        fontWeight: FontWeight.w400,
        color: fontColor ?? kColorWhite,
        height: 1.4,
      ),
    );
