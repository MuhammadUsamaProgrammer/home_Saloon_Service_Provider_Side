import 'package:audioplayers/audioplayers.dart';

class ClickSound {
  static const String lightClickSound =
      'sounds/click_Sound_Small_Button_Iphone.mpeg';
  static const String heavyClickSound =
      'sounds/click_Sound_Large_Button_Iphone.mpeg';

  static AudioPlayer player = AudioPlayer();

  static Future<void> play({int sound = 0}) async {
    try {
      if (sound == 0) {
        await player.play(AssetSource(lightClickSound));
      } else {
        await player.play(AssetSource(heavyClickSound));
      }
    } catch (e) {
      print('Error playing sound: $e');
    }
  }
}
