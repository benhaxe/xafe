import 'package:flutter/material.dart';

import '../../res.dart';

var _underlineBorderStyle = UnderlineInputBorder(
  borderSide: BorderSide(
    color: kColorPurple,
    width: 2.0,
  ),
);
var _multiLineBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.0),
  borderSide: BorderSide(
    color: kColorPurple,
    width: 0.2,
  ),
);

InputDecorationTheme _xafeFormTheme = InputDecorationTheme(
  border: _underlineBorderStyle,
  enabledBorder: _underlineBorderStyle,
  focusedBorder: _underlineBorderStyle,
  disabledBorder: _underlineBorderStyle,
  errorBorder: _underlineBorderStyle,
  focusedErrorBorder: _underlineBorderStyle,
);

InputDecorationTheme get xafeFormTheme => _xafeFormTheme;
OutlineInputBorder get xafeMultiLineBorderStyle => _multiLineBorderStyle;
