import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xafe/xafe.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    Xafe(),
  );
}

/* void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => Xafe(),
    ),
  );
} */
