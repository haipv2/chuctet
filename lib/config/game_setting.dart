
import 'package:chuctet/db/preferences.dart';

class GameSetting {
  static bool soundOn;

  static init() async {
    var soundSetting = await preferences.getSoundSetting();
    soundOn = soundSetting;
  }


}
