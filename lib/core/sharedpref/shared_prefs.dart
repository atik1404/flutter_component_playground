import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  factory SharedPrefs() => _instance;

  SharedPrefs._internal();

  static final SharedPrefs _instance = SharedPrefs._internal();

  SharedPreferences? _prefs;

  /// Initialize Shared Preferences
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Ensure Shared Preferences is initialized
  void _ensureInitialized() {
    if (_prefs == null) {
      throw Exception("SharedPrefs not initialized. Call `init()` first.");
    }
  }

  /// Get int value
  int getInt({required String key, int defaultValue = 0}) {
    _ensureInitialized();

    return _prefs?.getInt(key) ?? defaultValue;
  }

  /// Get double value
  double getDouble({required String key, double defaultValue = 0.0}) {
    _ensureInitialized();

    return _prefs?.getDouble(key) ?? defaultValue;
  }

  /// Get String value
  String getString({required String key, String defaultValue = ""}) {
    _ensureInitialized();

    return _prefs?.getString(key) ?? defaultValue;
  }

  /// Get bool value
  bool getBool({required String key, bool defaultValue = false}) {
    _ensureInitialized();

    return _prefs?.getBool(key) ?? defaultValue;
  }

  /// Generic setter for any type
  Future<void> set<T>({required String key, required T value}) async {
    _ensureInitialized();

    if (value is String) {
      await _prefs!.setString(key, value);
    } else if (value is int) {
      await _prefs!.setInt(key, value);
    } else if (value is bool) {
      await _prefs!.setBool(key, value);
    } else if (value is double) {
      await _prefs!.setDouble(key, value);
    } else {
      throw Exception("Unsupported type: ${value.runtimeType}");
    }
  }

  /// Clear all stored values
  Future<void> clearAll() async {
    _ensureInitialized();
    await _prefs!.clear();
  }
}
