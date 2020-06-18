import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/scaler/scaler.dart' show BuildContextExtensions;

class XafeSecondaryButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _text;
  final double _buttonWidth;
  final double _bottomMargin;

  ///
  const XafeSecondaryButton({
    Key key,
    VoidCallback onPressed,
    Color backGroundColor,
    String text,
    double buttonWidth,
    bottomMargin,
    bool isLoading,
  })  : _onPressed = onPressed,
        _text = text ?? '',
        _buttonWidth = buttonWidth,
        _bottomMargin = bottomMargin ?? 0.0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _buttonWidth,
      margin: context.insetsOnly(bottom: _bottomMargin),
      child: FlatButton(
        padding: context.insetsSymetric(
          vertical: 20,
          horizontal: 16,
        ),
        color: Color(0xFFEDF0F7),
        child: Text(
          _text,
          style: GoogleFonts.muli(
              textStyle: TextStyle(
            fontSize: context.fontSize(kDimen16),
            letterSpacing: .8,
            fontWeight: FontWeight.w700,
            color: kColorDeepBlue,
          )),
        ),
        onPressed: () async => _onPressed(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
