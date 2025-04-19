import 'package:flutter_component_playground/core/di/module/bloc_di_module.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDi() async {
  final sharedPrefs = SharedPrefs();
  await sharedPrefs.init();

  di.registerSingleton<SharedPrefs>(SharedPrefs());

  await registerBlocModule();

}