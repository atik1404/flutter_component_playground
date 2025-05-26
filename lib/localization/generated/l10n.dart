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

  /// `Forgot Password`
  String get title_forgot_password {
    return Intl.message(
      'Forgot Password',
      name: 'title_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP`
  String get title_otp {
    return Intl.message(
      'Enter OTP',
      name: 'title_otp',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get title_reset_password {
    return Intl.message(
      'Reset Password',
      name: 'title_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get title_category {
    return Intl.message(
      'Categories',
      name: 'title_category',
      desc: '',
      args: [],
    );
  }

  /// `Opps!`
  String get title_error_title {
    return Intl.message(
      'Opps!',
      name: 'title_error_title',
      desc: '',
      args: [],
    );
  }

  /// `No data found, Please try again later.`
  String get error_message_no_data_found {
    return Intl.message(
      'No data found, Please try again later.',
      name: 'error_message_no_data_found',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone, Phone number must be at least 11 digits.`
  String get error_invalid_phone_number {
    return Intl.message(
      'Invalid phone, Phone number must be at least 11 digits.',
      name: 'error_invalid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password, Password must be at least 6 characters.`
  String get error_invalid_password {
    return Intl.message(
      'Invalid password, Password must be at least 6 characters.',
      name: 'error_invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Password and confirm password do not match.`
  String get error_invalid_confirm_password {
    return Intl.message(
      'Password and confirm password do not match.',
      name: 'error_invalid_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Invalid name, Name must be at least 5 characters.`
  String get error_invalid_name {
    return Intl.message(
      'Invalid name, Name must be at least 5 characters.',
      name: 'error_invalid_name',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email, Provide a valid email address.`
  String get error_invalid_email {
    return Intl.message(
      'Invalid email, Provide a valid email address.',
      name: 'error_invalid_email',
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

  /// `It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.`
  String get msg_sign_up {
    return Intl.message(
      'It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.',
      name: 'msg_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.`
  String get msg_forgot_password {
    return Intl.message(
      'It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.',
      name: 'msg_forgot_password',
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

  /// `Create Account`
  String get button_create_account {
    return Intl.message(
      'Create Account',
      name: 'button_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get button_continue {
    return Intl.message(
      'Continue',
      name: 'button_continue',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get button_reset_password {
    return Intl.message(
      'Reset Password',
      name: 'button_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get button_sumit {
    return Intl.message(
      'Submit',
      name: 'button_sumit',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get button_retry {
    return Intl.message(
      'Retry',
      name: 'button_retry',
      desc: '',
      args: [],
    );
  }

  /// `Please wait...`
  String get button_please_wait {
    return Intl.message(
      'Please wait...',
      name: 'button_please_wait',
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

  /// `Do you have an account?`
  String get text_have_account {
    return Intl.message(
      'Do you have an account?',
      name: 'text_have_account',
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

  /// `I'm agree to the `
  String get text_agreed {
    return Intl.message(
      'I\'m agree to the ',
      name: 'text_agreed',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get text_terms {
    return Intl.message(
      'Terms of Service',
      name: 'text_terms',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get text_privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'text_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get text_and {
    return Intl.message(
      ' and ',
      name: 'text_and',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t get the OTP?`
  String get text_didnt_get_otp {
    return Intl.message(
      'Didn’t get the OTP?',
      name: 'text_didnt_get_otp',
      desc: '',
      args: [],
    );
  }

  /// ` Resend OTP`
  String get text_resend_otp {
    return Intl.message(
      ' Resend OTP',
      name: 'text_resend_otp',
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

  /// `Enter your phone number`
  String get hint_enter_phone {
    return Intl.message(
      'Enter your phone number',
      name: 'hint_enter_phone',
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

  /// `Enter confirm password`
  String get hint_enter_confirm_password {
    return Intl.message(
      'Enter confirm password',
      name: 'hint_enter_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get hint_enter_new_password {
    return Intl.message(
      'Enter new password',
      name: 'hint_enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get hint_enter_name {
    return Intl.message(
      'Enter your name',
      name: 'hint_enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get menu_home {
    return Intl.message(
      'Home',
      name: 'menu_home',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get menu_profile {
    return Intl.message(
      'Profile',
      name: 'menu_profile',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get menu_wishlist {
    return Intl.message(
      'Favorites',
      name: 'menu_wishlist',
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
