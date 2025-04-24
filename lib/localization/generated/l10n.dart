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

  /// `The Simple Way to`
  String get title_introduction_1 {
    return Intl.message(
      'The Simple Way to',
      name: 'title_introduction_1',
      desc: '',
      args: [],
    );
  }

  /// `find the best!`
  String get title_introduction_sub_1 {
    return Intl.message(
      'find the best!',
      name: 'title_introduction_sub_1',
      desc: '',
      args: [],
    );
  }

  /// `The Best Design`
  String get title_introduction_2 {
    return Intl.message(
      'The Best Design',
      name: 'title_introduction_2',
      desc: '',
      args: [],
    );
  }

  /// `Strategy!`
  String get title_introduction_sub_2 {
    return Intl.message(
      'Strategy!',
      name: 'title_introduction_sub_2',
      desc: '',
      args: [],
    );
  }

  /// `Your perfect movie night starts here. Explore, stream, and love every scene.!`
  String get msg_introduction_1 {
    return Intl.message(
      'Your perfect movie night starts here. Explore, stream, and love every scene.!',
      name: 'msg_introduction_1',
      desc: '',
      args: [],
    );
  }

  /// `From Oscar winners to hidden gems—every film awaits your spotlight.`
  String get msg_introduction_2 {
    return Intl.message(
      'From Oscar winners to hidden gems—every film awaits your spotlight.',
      name: 'msg_introduction_2',
      desc: '',
      args: [],
    );
  }

  /// `It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.`
  String get msg_login {
    return Intl.message(
      'It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.',
      name: 'msg_login',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get button_get_started {
    return Intl.message(
      'Get Started',
      name: 'button_get_started',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get button_login {
    return Intl.message(
      'Login',
      name: 'button_login',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get text_facebook {
    return Intl.message(
      'Facebook',
      name: 'text_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get text_google {
    return Intl.message(
      'Google',
      name: 'text_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get text_sign_in {
    return Intl.message(
      'Sign In',
      name: 'text_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get text_or {
    return Intl.message(
      'Or',
      name: 'text_or',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get text_forget_password {
    return Intl.message(
      'Forget Password?',
      name: 'text_forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get text_dont_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'text_dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get text_sign_up {
    return Intl.message(
      'Sign Up',
      name: 'text_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get hint_enter_email {
    return Intl.message(
      'Enter your email',
      name: 'hint_enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get hint_enter_password {
    return Intl.message(
      'Enter your password',
      name: 'hint_enter_password',
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
