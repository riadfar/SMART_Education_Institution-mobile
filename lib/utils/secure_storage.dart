import 'constants.dart';

class SecureStorage {
  static Future<void> storeToken(String token) async {
    if (token.isNotEmpty) {
      await secureStorage.write(key: 'token', value: token);
    } else if (token.isEmpty) {
      // Get.snackbar("token", "token is empty");
    }
  }





  // static Future<void> storeToken(String token) async =>
  //     await secureStorage.write(key: 'token', value: token);

  static Future<String> getToken() async =>
      await secureStorage.read(key: 'token') ?? '';

  static Future<void> removeToken() async =>
      await secureStorage.delete(key: 'token');

  static Future<void> storeRefreshToken(String token) async =>
      await secureStorage.write(key: 'refreshToken', value: token);

  static Future<String> getRefreshToken() async =>
      await secureStorage.read(key: 'refreshToken') ?? '';

  static Future<void> removeRefreshToken() async =>
      await secureStorage.delete(key: 'refreshToken');

  static Future<void> storeEmail(String email) async =>
      await secureStorage.write(key: 'email', value: email);

  static Future<String> getEmail() async =>
      await secureStorage.read(key: 'email') ?? '';

  static Future<void> removeEmail() async =>
      await secureStorage.delete(key: 'email');
}
