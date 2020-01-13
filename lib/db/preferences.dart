import 'dart:async';
import '../common/const.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _defaultLanguage = 'en';
Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
Preferences preferences = Preferences();

class Preferences {

  // save/restore the preferred language
  Future<bool> getSoundSetting() async {
    final SharedPreferences prefs = await _prefs;
    bool value = prefs.getBool('sound') ?? true;
    return value;
  }

  setSoundSetting(bool value) async {
    final SharedPreferences prefs = await _prefs;
    var result = prefs.setBool('sound', value);
    return result;
  }

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

  String get defaultLanguage => _defaultLanguage;

  //SINGLETON
  static final Preferences _preferences = Preferences._internal();

  factory Preferences() {
    return _preferences;
  }

  Preferences._internal();
}
