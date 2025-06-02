final class SharedPrefKey {
  const SharedPrefKey._();

  static const String locale = 'locale';

  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
  static const String userLoggedInStatus = 'is_logged_in';
  static const String introScreenVisibility = 'is_intro_screen_visible';

  //profile related keys
  static const String userId = 'user_id';
  static const String fullName = 'full_name';
  static const String userEmail = 'user_email';
  static const String userProfileImage = 'user_profile_image';
  static const String userRole = 'user_role';
  static const String avatar = 'avatar';
}
