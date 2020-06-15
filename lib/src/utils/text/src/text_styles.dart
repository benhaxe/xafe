import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/res/values/values.dart';
import 'package:xafe/src/res/z_res.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';

///Text styling for [extra bold] texts.
TextStyle textStyleExtraBold(BuildContext context) => GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(kExtraBoldFontSize),
        letterSpacing: .8,
        fontWeight: FontWeight.w800,
      ),
    );

///Text styling for [bold] texts.
TextStyle textStyleBold(BuildContext context) => GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(kBoldFontSize),
        letterSpacing: .8,
        fontWeight: FontWeight.w700,
      ),
    );

///Text styling for [regular] texts.
TextStyle textStyleRegular(BuildContext context) => GoogleFonts.muli(
      textStyle: TextStyle(
        fontSize: context.fontSize(kBoldFontSize),
        fontWeight: FontWeight.w400,
        color: kColorWhite,
        height: 1.4,
      ),
    );
