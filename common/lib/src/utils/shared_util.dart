import 'package:shared_preferences/shared_preferences.dart';

class SharedUtil {
  SharedUtil._();

  static SharedPreferences? _sp;

  // 初始化
  static Future<void> init() async {
    _sp = await SharedPreferences.getInstance();
  }

  // token
  static const String _tokenKey = "token";
  static const String _userNameKey = "userName";

  static Future<void> setToken(String token) async {
    await _sp?.setString(_tokenKey, token);
  }

  static String getToken() {
    return _sp?.getString(_tokenKey) ?? "";
  }

  static Future<void> setUserName(String userName) async {
    await _sp?.setString(_userNameKey, userName);
  }

  static String getUserName() {
    return _sp?.getString(_userNameKey) ?? "";
  }
}
