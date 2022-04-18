import 'dart:io';

import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'core/core.dart';
import 'core/services/device_preview_screenshot_helper/device_preview_screenshot_helper.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
    tools: const [
      ...DevicePreview.defaultTools,
      DevicePreviewScreenshot(
        onScreenshot: onScreenshot,
        multipleScreenshots: true,
      ),
    ],
    enabled: false,
    builder: (context) => AppWidget(),
  ));
}
