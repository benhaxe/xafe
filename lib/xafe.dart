import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xafe/app/home/home.dart';
import 'package:xafe/src/utils/scaler/scaler.dart';

import 'app/onboard/onboard.dart';
import 'src/res/themes/themes.dart';

import 'package:device_preview/device_preview.dart';

class Xafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaleAware(
      config: ScaleConfig(),
      child: MaterialApp(
        title: 'Xafe',
        /* locale: DevicePreview.of(context).locale,
        builder: DevicePreview.appBuilder, */
        debugShowCheckedModeBanner: false,
        theme: xafeTheme(context),
        home: HomeScreen(),
      ),
    );
  }
}
