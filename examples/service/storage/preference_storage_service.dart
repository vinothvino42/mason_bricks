import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Shared Preference Keys
class PreferenceStorageKeys {
  static const String loggedIn = 'loggedIn';
  static const String theme = 'theme';
  static const String user = 'user';
  static const String loginType = 'loginType';
}

/// [PreferenceStorageService] - To persist shared preference data locally
/// in the form of key value pairs
///
/// In iOS, It uses `UserDefaults`
///
/// In Android, It uses `SharedPreference`
class PreferenceStorageService {
  static PreferenceStorageService? _instance;
  static SharedPreferences? _preferences;

  int? get theme => _getFromDisk(PreferenceStorageKeys.theme) ?? 1;
  String? get loginType => _getFromDisk(PreferenceStorageKeys.loginType) ?? '';
  bool get loggedIn => _getFromDisk(PreferenceStorageKeys.loggedIn) ?? false;
  // AuthUser get authUser {
  //   final String? userJson = _getFromDisk(PreferenceStorageKeys.user);
  //   if (userJson == null) {
  //     const dummyUser = AuthUser(
  //       id: 0,
  //       email: '',
  //       displayName: '',
  //     );
  //     return dummyUser;
  //   }
  //   return AuthUser.fromJson(jsonDecode(userJson));
  // }

  set theme(int? value) => _saveToDisk(PreferenceStorageKeys.theme, value);
  set loginType(String? value) =>
      _saveToDisk(PreferenceStorageKeys.loginType, value);
  set loggedIn(bool value) =>
      _saveToDisk(PreferenceStorageKeys.loggedIn, value);
  // set authUser(AuthUser? user) {
  //   if (user == null) {
  //     _removeFromDisk(PreferenceStorageKeys.user);
  //   } else {
  //     _saveToDisk(PreferenceStorageKeys.user, jsonEncode(user.toJson()),
  //         needLog: true);
  //   }
  // }

  static Future<PreferenceStorageService?> getInstance() async {
    _instance ??= PreferenceStorageService();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance;
  }

  dynamic _getFromDisk(String key, {bool needLog = false}) {
    final value = _preferences!.get(key);
    if (needLog) {
      print('Key: $key');
    }
    return value;
  }

  void _saveToDisk<T>(String key, T content, {bool needLog = false}) {
    if (needLog) {
      print('Store - Key: $key and Value: $content');
    }
    if (content is String) {
      _preferences!.setString(key, content);
    }
    if (content is bool) {
      _preferences!.setBool(key, content);
    }
    if (content is int) {
      _preferences!.setInt(key, content);
    }
    if (content is double) {
      _preferences!.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences!.setStringList(key, content);
    }
  }

  void _removeFromDisk(String key) {
    _preferences!.remove(key);
  }
}
