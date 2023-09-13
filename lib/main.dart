// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:default_project/config/values/system_ui_overlay_styles.dart';
import 'package:default_project/core/helpers/log_helper.dart';
import 'app.dart';
import 'core/di/service_locator.dart';
import 'core/helpers/shared_preference_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(MySystemUiOverlayStyle.main);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await MySPHelper.init();

  MyLogHelper.init();

  configureDependencies();

  runApp(const MyApp());
}
