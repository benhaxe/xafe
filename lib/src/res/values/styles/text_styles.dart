import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

import '../values.dart';

///Text styling for [extra bold] texts.
TextStyle textStyleExtraBold(BuildContext context,
        {double fontSize = kDimen24}) =>
    GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(fontSize),
        letterSpacing: .8,
        fontWeight: FontWeight.w800,
      ),
    );

///Text styling for [bold] texts.
TextStyle textStyleBold(BuildContext context, {double fontSize = kDimen16}) =>
    GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(fontSize),
        letterSpacing: .8,
        fontWeight: FontWeight.w700,
      ),
    );

///Text styling for [regular] texts.
TextStyle textStyleRegular(BuildContext context,
        {double fontSize = kDimen14}) =>
    GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(fontSize),
        fontWeight: FontWeight.w400,
        color: kColorWhite,
        height: 1.4,
      ),
    );
