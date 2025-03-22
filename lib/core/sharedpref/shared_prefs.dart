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

  /// Generic getter for any type
  T get<T>({required String key, T? defaultValue}) {
    _ensureInitialized();

    return _prefs?.get(key) as T? ?? defaultValue ?? getDefaultValue<T>();
  }

  T getDefaultValue<T>() {
    T value;
    if (T == int) {
      value = 0 as T;
    } else if (T == double) {
      value = 0.0 as T;
    } else if (T == String) {
      value = "" as T;
    } else if (T == bool) {
      value = false as T;
    } else {
      throw Exception("Invalid preference type! Supported types are: int, double, String, bool.");
    }

    return value;
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