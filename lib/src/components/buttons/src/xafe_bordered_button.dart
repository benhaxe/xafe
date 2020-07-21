import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/scaler/scaler.dart' show BuildContextExtensions;

class XafeBorderedButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _text;
  final double _bottomMargin;

  ///
  const XafeBorderedButton(
    String text, {
    Key key,
    @required VoidCallback onPressed,
    double buttonWidth,
    bottomMargin,
  })  : _onPressed = onPressed,
        _text = text ?? '',
        _bottomMargin = bottomMargin ?? 0.0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.insetsOnly(bottom: _bottomMargin),
      child: FlatButton(
        padding: context.insetsSymetric(
          horizontal: 16,
        ),
        child: Text(
          _text,
          style: GoogleFonts.muli(
            textStyle: TextStyle(
              fontSize: context.fontSize(kDimen16),
              letterSpacing: .8,
              fontWeight: FontWeight.w700,
              color: kColorDeepBlue,
            ),
          ),
        ),
        onPressed: _onPressed,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: kColorPurple,
            style: BorderStyle.solid,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
