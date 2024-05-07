import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureLocalStorage {
  SecureLocalStorage(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  static const _emailKey = 'email';


  Future<String?> getEmail() async {
    return await _flutterSecureStorage.read(key: _emailKey);
  }

  Future<void> setEmail(String? email) async {
     await _flutterSecureStorage.write(key: _emailKey, value: email);
  }

}