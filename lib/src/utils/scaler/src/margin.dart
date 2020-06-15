import 'package:flutter/material.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

class XMargin extends StatelessWidget {
  final double _x;
  const XMargin(this._x);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: context.scale(_x));
  }
}

class YMargin extends StatelessWidget {
  final double _y;
  const YMargin(this._y);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.scaleY(_y),
    );
  }
}

double screenHeight(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.height * percent;

double screenWidth(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.width * percent;
