import 'package:chuctet/common/const.dart';
import 'package:chuctet/db/preferences.dart';

class GameSetting {
  static bool soundOn;

  static init() async {
    var soundSetting = await preferences.getConfigString(SOUND);
    soundOn = soundSetting;
  }
}
