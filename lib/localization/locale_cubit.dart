import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/common/constants/app_constants.dart';
import 'package:flutter_component_playground/core/di/module/app_di_module.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_pref_key.dart';
import 'package:flutter_component_playground/core/sharedpref/shared_prefs.dart';

final class LocaleCubit extends Cubit<Locale> {
  LocaleCubit()
      : super(Locale(di.get<SharedPrefs>().get(
            key: SharedPrefKey.locale, defaultValue: AppConstants.localEn,)));
  void changeLocale(String languageCode) {
    emit(Locale(languageCode));
  }
}
