import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Secure Store Keys
class SecureStorageKeys {
  static const String token = 'token';
  static const String deviceToken = 'deviceToken';
}

/// [SecureStorageService] - To store data in the secure storage
///
/// In iOS, It uses `Keychain`
///
/// In Android, It uses `EncryptedSharedPreferences`
class SecureStorageService {
  SecureStorageService({required FlutterSecureStorage storage})
      : _storage = storage;

  final FlutterSecureStorage _storage;

  Future<String> getToken() async {
    return await read(SecureStorageKeys.token) ?? '';
  }

  Future<String> getDeviceToken() async {
    return await read(SecureStorageKeys.deviceToken) ?? '';
  }

  set token(String? value) {
    store(SecureStorageKeys.token, value);
  }

  set deviceToken(String? value) {
    store(SecureStorageKeys.deviceToken, value);
  }

  Future<String?> read(String key) async {
    final value = await _storage.read(key: key);
    return value;
  }

  Future<void> store(String key, String? value) async {
    await _storage.write(key: key, value: value);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }
}
