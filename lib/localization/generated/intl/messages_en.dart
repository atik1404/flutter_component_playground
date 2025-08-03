// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(language) => "Language: ${language}";

  static String m1(rating) => "${rating}/10 IMDB";

  static String m2(email) =>
      "We send you an OTP to verify your email. Please enter the OTP to ${email}";

  static String m3(date) => "Released: ${date}";

  static String m4(user) => "Hello, ${user}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "button_continue": MessageLookupByLibrary.simpleMessage("Continue"),
        "button_create_account":
            MessageLookupByLibrary.simpleMessage("Create Account"),
        "button_get_started":
            MessageLookupByLibrary.simpleMessage("Get Started"),
        "button_login": MessageLookupByLibrary.simpleMessage("Login"),
        "button_please_wait":
            MessageLookupByLibrary.simpleMessage("Please wait..."),
        "button_reset_password":
            MessageLookupByLibrary.simpleMessage("Reset Password"),
        "button_retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "button_sumit": MessageLookupByLibrary.simpleMessage("Submit"),
        "error_invalid_confirm_password": MessageLookupByLibrary.simpleMessage(
            "Invalid confirm password or Password & confirm password do not match."),
        "error_invalid_email": MessageLookupByLibrary.simpleMessage(
            "Invalid email, Provide a valid email address."),
        "error_invalid_name": MessageLookupByLibrary.simpleMessage(
            "Invalid name, Name must be at least 5 characters."),
        "error_invalid_otp": MessageLookupByLibrary.simpleMessage(
            "Invalid OTP, Provide a valid OTP number."),
        "error_invalid_password": MessageLookupByLibrary.simpleMessage(
            "Invalid password, Password must be at least 6 characters."),
        "error_invalid_phone_number": MessageLookupByLibrary.simpleMessage(
            "Invalid phone, Phone number must be at least 11 digits."),
        "error_message_no_data_found": MessageLookupByLibrary.simpleMessage(
            "No data found, Please try again later."),
        "hint_enter_confirm_password":
            MessageLookupByLibrary.simpleMessage("Enter confirm password"),
        "hint_enter_email":
            MessageLookupByLibrary.simpleMessage("Enter your email"),
        "hint_enter_name":
            MessageLookupByLibrary.simpleMessage("Enter your name"),
        "hint_enter_new_password":
            MessageLookupByLibrary.simpleMessage("Enter new password"),
        "hint_enter_password":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "hint_enter_phone":
            MessageLookupByLibrary.simpleMessage("Enter your phone number"),
        "menu_home": MessageLookupByLibrary.simpleMessage("Home"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "menu_wishlist": MessageLookupByLibrary.simpleMessage("Favorites"),
        "msg_forgot_password": MessageLookupByLibrary.simpleMessage(
            "It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum."),
        "msg_greeting": MessageLookupByLibrary.simpleMessage(
            "Welcome back to your dashboard"),
        "msg_introduction_1": MessageLookupByLibrary.simpleMessage(
            "Your perfect movie night starts here. Explore, stream, and love every scene.!"),
        "msg_introduction_2": MessageLookupByLibrary.simpleMessage(
            "From Oscar winners to hidden gems—every film awaits your spotlight."),
        "msg_login": MessageLookupByLibrary.simpleMessage(
            "It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum."),
        "msg_sign_up": MessageLookupByLibrary.simpleMessage(
            "It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum."),
        "placeholder_movie_language": m0,
        "placeholder_movie_rating": m1,
        "placeholder_otp_sending_message": m2,
        "placeholder_released_on": m3,
        "placeholder_user_greeting": m4,
        "text_agreed":
            MessageLookupByLibrary.simpleMessage("I\'m agree to the "),
        "text_and": MessageLookupByLibrary.simpleMessage(" and "),
        "text_didnt_get_otp":
            MessageLookupByLibrary.simpleMessage("Didn’t get the OTP?"),
        "text_dont_have_account":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "text_facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
        "text_forget_password":
            MessageLookupByLibrary.simpleMessage("Forget Password?"),
        "text_google": MessageLookupByLibrary.simpleMessage("Google"),
        "text_have_account":
            MessageLookupByLibrary.simpleMessage("Do you have an account?"),
        "text_or": MessageLookupByLibrary.simpleMessage("Or"),
        "text_privacy_policy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "text_resend_otp": MessageLookupByLibrary.simpleMessage(" Resend OTP"),
        "text_sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "text_sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "text_terms": MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "title_app_name": MessageLookupByLibrary.simpleMessage("Movie Hub"),
        "title_category": MessageLookupByLibrary.simpleMessage("Categories"),
        "title_description":
            MessageLookupByLibrary.simpleMessage("Description"),
        "title_error_title": MessageLookupByLibrary.simpleMessage("Opps!"),
        "title_forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password"),
        "title_home": MessageLookupByLibrary.simpleMessage("Home"),
        "title_introduction_1":
            MessageLookupByLibrary.simpleMessage("The Simple Way to"),
        "title_introduction_2":
            MessageLookupByLibrary.simpleMessage("The Best Design"),
        "title_introduction_sub_1":
            MessageLookupByLibrary.simpleMessage("find the best!"),
        "title_introduction_sub_2":
            MessageLookupByLibrary.simpleMessage("Strategy!"),
        "title_language": MessageLookupByLibrary.simpleMessage("Language"),
        "title_length": MessageLookupByLibrary.simpleMessage("Length"),
        "title_otp": MessageLookupByLibrary.simpleMessage("Enter OTP"),
        "title_related_movies":
            MessageLookupByLibrary.simpleMessage("Related Movies"),
        "title_reset_password":
            MessageLookupByLibrary.simpleMessage("Reset Password"),
        "title_status": MessageLookupByLibrary.simpleMessage("Status")
      };
}
