import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_component_playground/core/common/utils/logger_utils';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/movie_hub.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  setupLogging();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MovieHub());
}

