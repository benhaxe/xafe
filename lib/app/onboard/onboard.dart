import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/components/buttons/buttons.dart';
import 'package:xafe/src/res/z_res.dart';
import 'package:xafe/src/utils/scaler/src/margin.dart';
import 'package:xafe/src/utils/text/text.dart';

import 'package:xafe/src/utils/scaler/scaler.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Height is: ${context.height / 2}");

    return Scaffold(
      body: Container(
        padding: context.insetsSymetric(horizontal: 16),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: context.insetsAll(16.0),
                  child: SizedBox(
                    height: context.height * 0.6,
                    child: Image.asset(kImgOnBoard),
                  ),
                ),
                Text(
                  'Build your\nfinancial profile',
                  textAlign: TextAlign.center,
                  style: textStyleExtraBold(context),
                ),
                YMargin(24),
                Text(
                  'Connect bank accounts\n'
                  'credit cards so we can build\n'
                  'your financial profile',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.muli(
                    textStyle: Theme.of(context).textTheme.headline1,
                    fontSize: context.fontSize(kBoldFontSize),
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: XafeSecondaryButton(
                bottomMargin: 24.0,
                buttonWidth: context.width * .8,
                text: 'Get started',
              ),
            )
          ],
        ),
      ),
    );
  }
}
