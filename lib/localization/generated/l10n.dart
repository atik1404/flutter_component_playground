// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LocalizedStrings {
  LocalizedStrings();

  static LocalizedStrings? _current;

  static LocalizedStrings get current {
    assert(_current != null,
        'No instance of LocalizedStrings was loaded. Try to initialize the LocalizedStrings delegate before accessing LocalizedStrings.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LocalizedStrings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LocalizedStrings();
      LocalizedStrings._current = instance;

      return instance;
    });
  }

  static LocalizedStrings of(BuildContext context) {
    final instance = LocalizedStrings.maybeOf(context);
    assert(instance != null,
        'No instance of LocalizedStrings present in the widget tree. Did you add LocalizedStrings.delegate in localizationsDelegates?');
    return instance!;
  }

  static LocalizedStrings? maybeOf(BuildContext context) {
    return Localizations.of<LocalizedStrings>(context, LocalizedStrings);
  }

  /// `Home`
  String get title_home {
    return Intl.message(
      'Home',
      name: 'title_home',
      desc: '',
      args: [],
    );
  }

  /// `Movie Hub`
  String get title_app_name {
    return Intl.message(
      'Movie Hub',
      name: 'title_app_name',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<LocalizedStrings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'bn'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LocalizedStrings> load(Locale locale) => LocalizedStrings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
