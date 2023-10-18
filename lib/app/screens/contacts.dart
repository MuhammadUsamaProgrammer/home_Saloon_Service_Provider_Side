import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../common/vibrate/vibrate.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // GoRouter.of(context).pushNamed(MyRoutes.contact);
              vibrate();
              final player = AudioPlayer();
              player.play(
                  AssetSource('sounds/click_Sound_Large_Button_Iphone.mpeg'));
            },
            child: Container(
              height: 150,
              width: 300,
              child: Center(child: Text('Contact')),
            )),
      ),
    );
  }
}

// class ButtonHitSoundDemo extends StatefulWidget {
//   @override
//   _ButtonHitSoundDemoState createState() => _ButtonHitSoundDemoState();
// }

// class _ButtonHitSoundDemoState extends State<ButtonHitSoundDemo> {
//   final AudioPlayer audioPlayer = AudioPlayer();

//   @override
//   void initState() {
//     super.initState();
//     loadAudio();
//   }

//   Future<void> loadAudio() async {
//     await audioPlayer.setAsset('assets/button_hit_sound.mp3');
//   }

//   Future<void> playButtonHitSound() async {
//     await audioPlayer.seek(Duration.zero);
//     await audioPlayer.play();
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Button Hit Sound Demo'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             playButtonHitSound();
//           },
//           child: Text('Hit the Button'),
//         ),
//       ),
//     );
//   }
// }
