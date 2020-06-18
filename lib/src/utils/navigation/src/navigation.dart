import 'package:flutter/material.dart';

import 'transparent_route.dart';

navigateReplace(BuildContext context, Widget route, {isDialog = false}) =>
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        fullscreenDialog: isDialog,
        builder: (context) => route,
      ),
    );

navigate(BuildContext context, Widget route, {isDialog = false}) =>
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: isDialog,
        builder: (context) => route,
      ),
    );

popToFirst(BuildContext context) =>
    Navigator.of(context).popUntil((route) => route.isFirst);

pushAndRemoveUntil(BuildContext context, Widget newRoute) =>
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => newRoute,
      ),
      (route) => false,
    );

popView(BuildContext context) => Navigator.pop(context);

navigateTransparentRoute(BuildContext context, Widget route) {
  return Navigator.push(
    context,
    TransparentRoute(
      builder: (context) => route,
    ),
  );
}
