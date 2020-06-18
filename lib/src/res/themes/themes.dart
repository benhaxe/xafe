import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res.dart';

ThemeData xafeTheme(BuildContext context) => ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      canvasColor: kColorWhite,
      primarySwatch: MaterialColor(
        0xFF2456E8,
        <int, Color>{
          50: kColorDeepBlue,
          100: kColorDeepBlue,
          200: kColorDeepBlue,
          300: kColorDeepBlue,
          400: kColorDeepBlue,
          500: kColorDeepBlue,
          600: kColorDeepBlue,
          700: kColorDeepBlue,
          800: kColorDeepBlue,
          900: kColorDeepBlue,
        },
      ),

      primaryColor: kColorLightBlue,
      backgroundColor: kColorGray, // status bar color
      brightness: Brightness.light,
      textTheme: GoogleFonts.muliTextTheme(
        Theme.of(context).textTheme,
      ),
    );
