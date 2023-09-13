// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:default_project/config/values/shared_preference_keys.dart';

class MySPHelper {
  //
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Theme
  static bool get isLight => _prefs.getBool(MySPKeys.isDark) ?? true;
  static set isLight(bool value) => _setData(MySPKeys.isDark, value);

  /// Permissions
  static bool get locationPermissionRequested =>
      _prefs.getBool(MySPKeys.hasLocationPermission) ?? false;
  static set locationPermissionRequested(bool? value) =>
      _setData(MySPKeys.hasLocationPermission, value);

  ///
  static Future<bool> clear() => _prefs.clear();

  static _setData(String key, dynamic value) {
    if (value == null) {
      _prefs.remove(key);
    } else if (value is String) {
      _prefs.setString(key, value);
    } else if (value is bool) {
      _prefs.setBool(key, value);
    } else if (value is int) {
      _prefs.setInt(key, value);
    } else if (value is List<String>) {
      _prefs.setStringList(key, value);
    }
  }
}
