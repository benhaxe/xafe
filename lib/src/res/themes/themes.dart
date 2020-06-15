import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

export 'colors.dart';

ThemeData xafeTheme(BuildContext context) => ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      canvasColor: kColorWhite,
      primarySwatch: Colors.blue,
      primaryColor: kColorLightBlue,
      backgroundColor: kColorGray, // status bar color
      brightness: Brightness.light,
      textTheme: GoogleFonts.muliTextTheme(
        Theme.of(context).textTheme,
      ),
    );
