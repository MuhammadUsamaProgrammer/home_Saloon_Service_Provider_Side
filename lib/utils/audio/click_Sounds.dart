import 'package:audioplayers/audioplayers.dart';

class ClickSound {
  static const String lightClickSound =
      'sounds/click_Sound_Small_Button_Iphone.mpeg';
  static const String heavyClickSound =
      'sounds/click_Sound_Large_Button_Iphone.mpeg';

  static AudioPlayer player = AudioPlayer();
  static int sound = 0;
  static Future<void> play() async {
    try {
      if (sound == 3) {
        await player.play(AssetSource(heavyClickSound));
        sound = 0;
      } else {
        await player.play(AssetSource(lightClickSound));
        sound++;
      }
    } catch (e) {
      print('Error playing sound: $e');
    }
  }
}
