import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xafe/src/res/res.dart';
import 'package:xafe/src/utils/scaler/scaler.dart' show BuildContextExtensions;

class XafeButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _text;
  final double _buttonWidth;
  final double _bottomMargin;
  final bool _isLoading;

  ///
  const XafeButton({
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
        _isLoading = isLoading ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _buttonWidth ?? context.width,
      margin: context.insetsOnly(bottom: _bottomMargin),
      decoration: BoxDecoration(
        color: kColorDeepBlue,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0xFFEDF0F7),
            blurRadius: 2.0,
            offset: Offset(0.0, 6.0),
          )
        ],
      ),
      child: MaterialButton(
        padding: context.insetsSymetric(
          vertical: 20,
          horizontal: 16,
        ),
        color: kColorDeepBlue,
        child: _isLoading == true
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                _text,
                style: GoogleFonts.muli(
                    textStyle: TextStyle(
                  fontSize: context.fontSize(kDimen16),
                  letterSpacing: .8,
                  fontWeight: FontWeight.w700,
                  color: kColorWhite,
                )),
              ),
        onPressed: _isLoading == true
            ? null
            : () async {
                _onPressed();
              },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
