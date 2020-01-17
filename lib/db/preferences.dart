import 'dart:async';
import '../common/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
Preferences preferences = Preferences();

class Preferences {

  //get seen
  Future<bool> getBool(String seen) async {
    final SharedPreferences prefs = await _prefs;
    bool result = prefs.getBool(IS_FIRST_TIME);
    return result;
  }

  Future<bool> setPreferredBool(String key, bool value) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setBool(key, value);
  }

  //get seen
  Future<bool> getConfigString(String key) async {
    final SharedPreferences prefs = await _prefs;
    bool result = prefs.getBool(key);
    return result;
  }

  Future<bool> setConfigString(String key, String value) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setString(key, value);
  }



  //SINGLETON
  static final Preferences _preferences = Preferences._internal();

  factory Preferences() {
    return _preferences;
  }

  Preferences._internal();
}
